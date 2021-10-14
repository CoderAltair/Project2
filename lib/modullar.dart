class Netflix{
  String imgUrl;
  String title;
  String category;
int year;
  String country;
int length;
  String description;
  List<String> screenshots;
Netflix({
this. imgUrl,
  this.title,
  this.category,
  this.year,
  this.country,
  this.length,
  this.description,
  this.screenshots,
});
}
final List<Netflix>movies=[
  Netflix(
    imgUrl: 'assets/3as.jpg',
    title: 'Lochin va qishgi askar',
    category: 'Fantastika',
    year: 2021,
    country: 'AQSH',
    length: 129,
    description:
    'Lochin va qishki askar Marvel Comics qahramonlari Sam Uilson / Lochin va Bakki Barns / Qishki askar asosida yaratilgan Disney + oqim xizmati uchun Malkolm Spellman tomonidan yaratilgan Amerika televizion mini seriallari. U Marvel Cinematic Universe (MCU) da o`rnatilgan bo`lib, franchayzing filmlari bilan doimiylikni baham ko`radi. Serial voqealari Qasoskorlar:Intiho (2019) filmidan keyin sodir bo`ladi. Serial Marvel Studios tomonidan ishlab chiqarilgan bo`lib, Spellman bosh yozuvchi va Kari Skogland rejissyori bo`lib ishlagan.',
    screenshots: [
      'assets/1as.jpg',
      'assets/2as.webp',
      'assets/3as.jpg',
      'assets/4as.jpg',
      'assets/5as.jpg',
    ],
  ),
  Netflix(
    imgUrl: 'assets/1ss.jpg',
    title: 'Scorpion(O`zbek film)',
    category: 'Badiy Film',
    year: 2021,
    country: 'O`zbekiston',
    length: 120,
    description:
    'Scorpion azolari maxsus xizmat tomonidan kuzatiladi.Jinoiy guruh a`zolari neft baronlari bilan jinoiy til biriktiradi',
    screenshots: [
      'assets/1ss.jpg',
      'assets/2ss.jpg',
      'assets/3ss.jpeg',
      'assets/4ss.jpeg',
      'assets/9.jpg',
    ],
  ),
  Netflix(
    imgUrl: 'assets/2qs.jpg',
    title: 'Qasoskorlar',
    category: 'Fantastika',
    year: 2019,
    country: 'AQSH',
    length: 115,
    description:
    ' Intiho (inglizcha: Avengers: Endgame), 2019-yilda Marvel Comics nashriyoti tomonidan chiqarilgan Qasoskorlar nomli superqahramonlar jamoasiga asoslangan, shuningdek, Marvel Studios tomonidan ishlab chiqarilgan va Walt Disney Studios Motion Pictures tomonidan tarqatilgan Amerika superqahramon filmi. Ushbu film 2012-yilda ishlangan Qasoskorlar, 2015-yilda ishlangan Qasoskorlar: Ultron erasi va 2018-yilda ishlangan Qasoskorlar: Abadiyat jangi filmlarining davomi boʻlib, kartina Marvel Kinematografiya Koinoti (MKK) ning The Infinity Saga da final qismi boʻlgan 22 chi badiiy filmi hisoblanadi.Film rejissori Anthony va Joe Russo,',
    screenshots: [
      'assets/1qs.jpg',
      'assets/2qs.jpg',
      'assets/3qs.jpg',
      'assets/endgame.jpg',
      'assets/spiderman.jpg',
    ],
  ),

];
final List<String> labels=[
  'Qiziqarli',
  'Premyere',
  'Maxsus',
  'Yangi',
];
final List<String> Mylist=[
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/3.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
];
final List<String>popular=[
  'assets/6.jpg',
  'assets/7.jpg',
  'assets/8.jpg',
  'assets/9.jpg',
  'assets/10.jpg',
];