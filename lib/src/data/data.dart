class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Scan the QR code on the table to explore the menu");
  sliderModel.setTitle("CONTACTLESS MENU");
  sliderModel.setImageAssetPath("assets/images/qr_scan.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Order using the digital menu on your own phone");
  sliderModel.setTitle("CONTACTLESS ORDER");
  sliderModel.setImageAssetPath("assets/images/order.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Review the bill and pay through your phone");
  sliderModel.setTitle("CONTACTLESS PAY");
  sliderModel.setImageAssetPath("assets/images/pay.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
