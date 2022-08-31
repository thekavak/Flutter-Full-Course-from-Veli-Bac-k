class PostModel {
  int? userId;
  int? id;

  String? title;
  String? body;

  //initialze etmek zorundayız
}

class PostModel2 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(this.userId, this.id, this.title, this.body);

  //initialze etmek zorundayız
}

class PostModel3 {
  int userId;
  int id;
  String title;
  String body;

  PostModel3(this.userId, this.id, this.title, this.body);

  //initialze etmek zorundayız
}

class PostModel4 {
  final int userId;
  final int id;

  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  //initialze etmek zorundayız
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;

  /* {
     _userId = userId;
     _id = id;
     _title = title;
     _body = body;
  }*/

  //initialze etmek zorundayız

}
