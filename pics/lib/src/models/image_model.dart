class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  factory ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    return ImageModel(
      parsedJson['id'],
      parsedJson['url'],
      parsedJson['title'],
    );
  }
}
