class Post {
  final int templateid;
  final String title;
  final String fill;
  final String username;

  Post({this.templateid, this.title, this.fill, this.username});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      templateid: json['template_id'],
      title: json['title'],
      fill: json['fill'],
      username: json['username'],
    );
  }
}
