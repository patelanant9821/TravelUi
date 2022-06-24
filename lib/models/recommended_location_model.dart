class RecommendedLocationModel {
  String name;
  String state;
  String image;
  String description;
  String package;
  String bestTimeToVisit;
  String packageDuration;

  RecommendedLocationModel(
    this.name,
    this.state,
    this.image,
    this.description,
    this.package,
    this.bestTimeToVisit,
    this.packageDuration,
  );
}

List<RecommendedLocationModel> recommended = recommendedData
    .map((items) => RecommendedLocationModel(
        items['name'],
        items['state'],
        items['image'],
        items['description'],
        items['package'],
        items['bestTimeToVisit'],
        items['packageDuration']))
    .toList();

var recommendedData = [
  {
    'name': 'Gangtok',
    'state': 'Sikkim',
    'image': 'assets/images/gangtok-sikkim.jpg',
    'description':
        'Beautiful Location, must visit. Holy place enriched with pure and peaceful environment.',
    'package': '₹ 6000',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
  {
    'name': 'Goa',
    'state': 'Goa',
    'image': 'assets/images/goa.jpg',
    'description': 'Beautiful Location, must visit.',
    'package': '₹ 10200',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '5 nights 6 days',
  },
  {
    'name': 'Kutchh',
    'state': 'Gujarat',
    'image': 'assets/images/kutchh-gujarat.jpg',
    'description': 'Beautiful Location, must visit',
    'package': '₹ 8200',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
  {
    'name': 'Nainital',
    'state': 'Uttarakhand',
    'image': 'assets/images/nainital-uttarakhand.jpg',
    'description': 'Beautiful Location, must visit',
    'package': '₹ 8000',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
  {
    'name': 'Ooty',
    'state': 'Tamil Nadu',
    'image': 'assets/images/ooty-tamil-nadu.jpg',
    'description': 'Beautiful Location, must visit',
    'package': '₹ 7200',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
  {
    'name': 'Shillong',
    'state': 'Meghalaya',
    'image': 'assets/images/shillong-meghalaya.jpg',
    'description': 'Beautiful Location, must visit',
    'package': '₹ 7000',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
  {
    'name': 'Srinagar',
    'state': 'Kashmir',
    'image': 'assets/images/srinagar-kashmir.jpg',
    'description': 'Beautiful Location, must visit',
    'package': '₹ 8500',
    'bestTimeToVisit': 'April - June',
    'packageDuration': '3 nights 4 days',
  },
];
