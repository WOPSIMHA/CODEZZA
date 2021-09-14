from flask import Flask, request # 서버 구현을 위한 Flask 객체
from flask_restx import Api, Resource # Api 구현을 위한 Api 객체
import pymysql
import json
# import requests

from setting import configdb

app = Flask(__name__) # Flask 객체 선언, 파라미터로 어플리케이션 패키지의 이름을 넣어줌.
api = Api(app)  # Flask 객체에 Api 객체 등록

@app.route("/")
def index():
  return 'index'

@api.route('/login', methods=['POST'])
class login(Resource)  :
  def post(self):
    # params = json.loads(request.get_data(), encoding='utf-8')
    # params = json.loads(request.get_json(), encoding='utf-8')
    params = request.get_json()
    paramsList = []

    if len(params) == 0:
      return False
    for key in params.keys():
        paramsList.append(params[key])
    paramsList = tuple(paramsList)
    
    con = connectDB()
    c = con.cursor(pymysql.cursors.DictCursor)
    sql = """select count(*) as cnt from t_user where 1=1 and u_id = %s and u_pw = %s;"""
    c.execute(sql, paramsList)
    result = c.fetchone()
    con.commit()
    c.close()

    return (True if result["cnt"] == 1 else False)

@api.route('/idCheck', methods=['POST'])
class idCheck(Resource)  :
  def post(self):
    params = request.get_json()
    paramsList = []

    if len(params) == 0:
      return False
    for key in params.keys():
        paramsList.append(params[key])
    paramsList = tuple(paramsList)
    
    con = connectDB()
    c = con.cursor(pymysql.cursors.DictCursor)
    sql = """select count(*) as cnt from t_user where 1=1 and u_id = %s;"""
    c.execute(sql, paramsList)
    result = c.fetchone()
    con.commit()
    c.close()
    
    return (True if result["cnt"] == 0 else False)

@api.route('/register', methods=['POST'])
class register(Resource)  :
  def post(self):
    params = request.get_json()
    paramsList = []

    if len(params) == 0:
      return False
    for key in params.keys():
        paramsList.append(params[key])
    paramsList = tuple(paramsList)
    
    con = connectDB()
    c = con.cursor(pymysql.cursors.DictCursor)
    try:
      sql = """insert into t_user (u_id, u_pw, ins_id, ins_dt, upt_dt) values(%s, %s, %s, now(), now());"""
      c.execute(sql, paramsList)

    except Exception as e:
      # logger.error(e)
      # logger.exception(e)
      return False

    finally:
      result = c.fetchone()
      con.commit()
      c.close()
      return True

    return result

@api.route('/uptProfile', methods=['POST'])
class uptProfile(Resource)  :
  def post(self):
    params = request.get_json()
    paramsList = []

    if len(params) == 0:
      return False
    for key in params.keys():
        paramsList.append(params[key])
    paramsList = tuple(paramsList)
    
    con = connectDB()
    c = con.cursor(pymysql.cursors.DictCursor)
    try:
      sql = """update t_user set u_name = %s, u_comment = %s, upt_dt = now() where 1=1 and u_id = %s;"""
      c.execute(sql, paramsList)

    except Exception as e:
      # logger.error(e)
      # logger.exception(e)
      return False

    finally:
      result = c.fetchone()
      con.commit()
      c.close()
      return True
    
    
    

    

def connectDB():
  connection = pymysql.connect(host=configdb.DATABASE_CONFIG['host'],
                           user=configdb.DATABASE_CONFIG['user'],
                           password=configdb.DATABASE_CONFIG['passwd'],
                           db=configdb.DATABASE_CONFIG['db'])
  return connection

if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0', port=5000)
# app.run(debug=True, host='0.0.0.0', port=5000)