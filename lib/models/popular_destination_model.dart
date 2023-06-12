class PopularDestinationModel {
  String name;
  String state;
  String image;
  PopularDestinationModel(this.name, this.state, this.image);
}

List<PopularDestinationModel> populars = popularsData
    .map((item) =>
        PopularDestinationModel(item['name']!, item['state']!, item['image']!))
    .toList();

var popularsData = [
  {
    'name': 'Sundarban',
    'state': 'West Bengal',
    'image': 'assets/images/sundarban-westBengal.png'
  },
  {
    'name': 'Golden Temple',
    'state': 'Punjab',
    'image': 'assets/images/golden-temple-punjab.png'
  },
  {
    'name': 'Jaisalmer',
    'state': 'Rajasthan',
    'image': 'assets/images/jesalmer-rajasthan.png'
  },
  {
    'name': 'Rishikesh',
    'state': 'Uttarakhand',
    'image': 'assets/images/rishikesh-uttarakhand.png'
  },
  {
    'name': 'White Rann',
    'state': 'Gujarat',
    'image': 'assets/images/white-rann-of-kutchh.png'
  },
];
