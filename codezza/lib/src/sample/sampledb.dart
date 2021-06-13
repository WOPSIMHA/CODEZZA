
import '/src/models/entitys.dart';

// 사용자 샘플 데이터
List<User> users = [
  User(
    uID: 'user1',
    uPW: 'user1234',
    uName: '사용자 유저1',
    uPhoto: 'https://tinyurl.com/yf8laugo',
    uComment: '안녕하세요 유저1입니다. 잘 부탁합니다.',
    uCategory: '강아지',
    uPrivate: 'Y',
    insDT: DateTime.parse('2020-03-16'),
    insID: 'user1',
    uptDT: DateTime.parse('2022-06-13'),
  ),
  User(
    uID: 'user2',
    uPW: 'user1234',
    uName: '[THE SOY]루퐁이네',
    uPhoto: 'https://tinyurl.com/yfgndo3u',
    uComment: '안녕하세요. \n[THE SOY]루퐁이네입니다. \n잘 부탁합니다.',
    uCategory: '여우',
    uPrivate: 'Y',
    insDT: DateTime.parse('2020-03-14'),
    insID: 'user2',
    uptDT: DateTime.parse('2022-06-16'),
  ),
];

// 개인 일기 샘플 데이터
List<Diary> user1Dairy = [
  Diary(
    dSEQ: 1,
    dTitle: '일기제목1',
    dText: '일기내용1',
    dThumbnail: 'https://tinyurl.com/yzf3x8fy',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user1',
    insDT: DateTime.parse('2020-03-14'),
    uptDT: DateTime.parse('2022-06-14'),
  ),
  Diary(
    dSEQ: 2,
    dTitle: '일기제목2',
    dText: '일기내용2',
    dThumbnail: 'https://tinyurl.com/ydrkweuk',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user1',
    insDT: DateTime.parse('2020-03-15'),
    uptDT: DateTime.parse('2022-06-15'),
  ),
  Diary(
    dSEQ: 3,
    dTitle: '일기제목3',
    dText: '일기내용3',
    dThumbnail: 'https://tinyurl.com/yfrrqnmg',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user1',
    insDT: DateTime.parse('2020-03-16'),
    uptDT: DateTime.parse('2022-06-16'),
  ),
  Diary(
    dSEQ: 4,
    dTitle: '일기제목4',
    dText: '일기내용4',
    dThumbnail: 'https://tinyurl.com/ye8qnn9l',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user1',
    insDT: DateTime.parse('2020-03-17'),
    uptDT: DateTime.parse('2022-06-17'),
  ),
  Diary(
    dSEQ: 5,
    dTitle: '일기제목5',
    dText: '일기내용5',
    dThumbnail: 'https://tinyurl.com/yz4pujsx',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user1',
    insDT: DateTime.parse('2020-03-18'),
    uptDT: DateTime.parse('2022-06-18'),
  ),
];

List<Diary> user2Dairy = [
  Diary(
    dSEQ: 1,
    dTitle: '넘 귀여워서 공유해요',
    dText: '얼마 전 집에서 2022 루퐁이 캘린더에 넣을 사진 촬영을 했었어요\n사진 촬영 영상은 곧 업로드\n예정이에요',
    dThumbnail: 'https://tinyurl.com/yzf3x8fy',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user2',
    insDT: DateTime.parse('2020-03-14'),
    uptDT: DateTime.parse('2022-06-14'),
  ),
  Diary(
    dSEQ: 2,
    dTitle: '넘 귀여워서 공유해요',
    dText: '얼마 전 집에서 2022 루퐁이 캘린더에 넣을 사진 촬영을 했었어요\n사진 촬영 영상은 곧 업로드\n예정이에요',
    dThumbnail: 'https://tinyurl.com/ydrkweuk',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user2',
    insDT: DateTime.parse('2020-03-15'),
    uptDT: DateTime.parse('2022-06-15'),
  ),
  Diary(
    dSEQ: 3,
    dTitle: '넘 귀여워서 공유해요',
    dText: '얼마 전 집에서 2022 루퐁이 캘린더에 넣을 사진 촬영을 했었어요\n사진 촬영 영상은 곧 업로드\n예정이에요',
    dThumbnail: 'https://tinyurl.com/yfrrqnmg',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user2',
    insDT: DateTime.parse('2020-03-16'),
    uptDT: DateTime.parse('2022-06-16'),
  ),
  Diary(
    dSEQ: 4,
    dTitle: '넘 귀여워서 공유해요',
    dText: '얼마 전 집에서 2022 루퐁이 캘린더에 넣을 사진 촬영을 했었어요\n사진 촬영 영상은 곧 업로드\n예정이에요',
    dThumbnail: 'https://tinyurl.com/ye8qnn9l',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user2',
    insDT: DateTime.parse('2020-03-17'),
    uptDT: DateTime.parse('2022-06-17'),
  ),
  Diary(
    dSEQ: 5,
    dTitle: '넘 귀여워서 공유해요',
    dText: '얼마 전 집에서 2022 루퐁이 캘린더에 넣을 사진 촬영을 했었어요\n사진 촬영 영상은 곧 업로드\n예정이에요',
    dThumbnail: 'https://tinyurl.com/yz4pujsx',
    dPrivate: 'N',
    dDiaryType: '개인',
    insID: 'user2',
    insDT: DateTime.parse('2020-03-18'),
    uptDT: DateTime.parse('2022-06-18'),
  ),
];