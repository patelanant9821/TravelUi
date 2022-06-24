class CarouselModel {
  final String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousels = carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {'image' : 'assets/images/flight-offers.png'},
  {'image' : 'assets/images/hotel-discount.png'},
];