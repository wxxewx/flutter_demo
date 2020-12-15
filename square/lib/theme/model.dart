class TweetTheme{
  final String category;
  final String icon;
  final String desc;
  final String color;
  final List<String> tags;

  TweetTheme(this.category, this.icon, this.desc, this.color, this.tags);

  @override
  String toString() {
    return 'TweetTheme{category: $category, icon: $icon, desc: $desc, color: $color, tags: $tags}';
  }
}