class HashTagModel {
  String title;

  HashTagModel({required this.title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerImageUrl;
  String date;
  String content;
  String view;

  BlogModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.writerImageUrl,
    required this.date,
    required this.content,
    required this.view,
  });
}

class HottestPostsStaticImages {
  String imagePath;

  HottestPostsStaticImages({required this.imagePath});
}

class HottestPodcasts {
  int id;
  String title;
  String imagePath;

  HottestPodcasts({
    required this.id,
    required this.title,
    required this.imagePath, 
  });
}
