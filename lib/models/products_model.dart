class ProductModel {
  String image;
  String title;
  String rankImage;
  List<String> content;
  double rating;
  int reviewCount;
  ProductModel(
      {required this.image,
      required this.content,
      required this.rankImage,
      required this.rating,
      required this.reviewCount,
      required this.title});
}
