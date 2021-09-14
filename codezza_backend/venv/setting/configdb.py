DATABASE_CONFIG = {
    'user' : 'test1',
    'passwd' : '!!c21soft@@',
    'host' : '114.207.112.201',
    'db' : 'test1',
    'charset' : 'utf8'
}
# class dbConnection(Resource)  :
#   # MySQL Connection 연결
#   db_connection = pymysql.connect(
#     user    = 'test1',
#     passwd  = '!!c21soft@@',
#     host    = '114.207.112.201',
#     db      = 'test1',
#     charset = 'utf8'
#   )

#   # Connection 으로부터 Cursor 생성
#   cursor = db_connection.cursor(pymysql.cursors.DictCursor)

#   # SQL문 실행
#   sql = "SELECT u_id, u_name FROM `t_user`;"
#   cursor.execute(sql)

#   # 데이타 Fetch
#   result = cursor.fetchall()

#   # Connection 닫기
#   cursor.close()

#   def queryResult(self):
#     # return json.dumps(self.result)
#     return self.result
  
#   def queryExecute(self, query):

    
 
 
 







  # def get(self) : # GET 요청시 리턴 값에 해당 하는 dict를 JSON 형태로 반환