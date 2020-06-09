class Audio {
  final String url;
  final int duration;

  Audio(this.url, {duration}) : duration = duration == null ? 0 : duration;

  @override
  String toString() {
    return 'Audio{url: $url, duration: $duration}';
  }
}