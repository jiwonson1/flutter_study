// Webtoon API를 불러오기 위한 파일
class WebtoonModel {
  final String title, thumb, id;
  // named constructor Json 파일을 파싱해서 필요한 정보를 가져오기 위한 생성자 역할 
  // 끝에 json이 html을 파싱해서 json으로 받아서 가져오는 것 
  WebtoonModel.fromJson(Map<String, dynamic> json) :
  title = json['title'],
  thumb = json['thumb'],
  id = json['id'];
}