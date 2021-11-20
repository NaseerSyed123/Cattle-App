class ShedModelList {
  String nameText;
  String imagePath;
  String tagText;
  String camText;
  String shedText;
  String outText;
  String viewText;

  ShedModelList(
      {this.tagText,
      this.nameText,
      this.camText,
      this.shedText,
      this.outText,
      this.imagePath,
      this.viewText});
}

List<ShedModelList> dummyShedModel = [
  ShedModelList(
      nameText: "Cattle 1",
      tagText: 'Tag No. 121',
      camText: 'Cam No. 22',
      imagePath: 'assets/cattle/cow2.png',
      shedText: '29',
      outText: '38',
      viewText: '1 day ago'),
  ShedModelList(
      nameText: "Cattle 2",
      tagText: 'Tag No. 321',
      camText: 'Cam No. 322',
      imagePath: 'assets/cattle/cow1.png',
      shedText: '33',
      outText: '36',
      viewText: '4 day ago'),
  ShedModelList(
      nameText: "Cattle 3",
      tagText: 'Tag No. 130',
      camText: 'Cam No. 222',
      imagePath: 'assets/cattle/goat.jpg',
      shedText: '21',
      outText: '24',
      viewText: '15 days ago'),
  ShedModelList(
      nameText: "Cattle 4",
      tagText: 'Tag No. 110',
      camText: 'Cam No. 22',
      imagePath: 'assets/cattle/cow3.jpg',
      shedText: '29',
      outText: '34',
      viewText: '3 days ago'),
  ShedModelList(
      nameText: "Cattle 5",
      tagText: 'Tag No. 111',
      camText: 'Cam No. 222',
      imagePath: 'assets/cattle/cow4.jpg',
      shedText: '31',
      outText: '33',
      viewText: '2 days ago'),
];
