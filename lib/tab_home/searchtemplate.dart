class Posts {
  final int templateid;
  final String title;
  final String fill;
  final String username;

  Posts({this.templateid, this.title, this.fill, this.username});
  factory Posts.formJson(Map<String, dynamic> json) {
    return new Posts(
      templateid: json['template_id'],
      title: json['title'],
      fill: json['fill'],
      username: json['username'],
    );
  }
}
