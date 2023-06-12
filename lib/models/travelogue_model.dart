class TravelogueModel {
  String name;
  String content;
  String place;
  String image;

  TravelogueModel(this.name, this.content, this.place, this.image);
}

List<TravelogueModel> travelogues = traveloguesData
    .map((item) => TravelogueModel(
        item['name']!, item['content']!, item['place']!, item['image']!))
    .toList();

var traveloguesData = [
  {
    'name': '\"Sundarban\"',
    'content':
        'Hello Guys, Anant here. Pleasure to watch \'Royal Bengal Tigers\'. This is the best time to visit here that is December to February',
    'place': 'River Hooghly, West Bengal',
    'image': 'assets/images/sundarban-westBengal.png',
  },
  {
    'name': '\"Jaisalmer\"',
    'content':
        'Hey everyone, Ahh! "Jaisalmer - The Golden city". Jaisalmer fort is crown of the city. Glad that i visited this place.',
    'place': 'Jaisalmer, Rajasthan',
    'image': 'assets/images/jesalmer-rajasthan.png',
  },
  {
    'name': '\"Sundarban\"',
    'content':
        'Hello Guys, Anant here. Pleasure to watch \'Royal Bengal Tigers\'. This is the best time to visit here that is December to February',
    'place': 'River Hooghly, West Bengal',
    'image': 'assets/images/sundarban-westBengal.png',
  },
  {
    'name': '\"Sundarban\"',
    'content':
        'Hello Guys, Anant here. Pleasure to watch \'Royal Bengal Tigers\'. This is the best time to visit here that is December to February',
    'place': 'River Hooghly, West Bengal',
    'image': 'assets/images/sundarban-westBengal.png',
  },
  {
    'name': '\"Sundarban\"',
    'content':
        'Hello Guys, Anant here. Pleasure to watch \'Royal Bengal Tigers\'. This is the best time to visit here that is December to February',
    'place': 'River Hooghly, West Bengal',
    'image': 'assets/images/sundarban-westBengal.png',
  },
];
