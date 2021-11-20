class ProjectModel {
  String txtTitle;
  String txtSubTitle;
  String txtDetail;
  String imagePath;

  ProjectModel(
      {this.txtTitle, this.txtSubTitle, this.txtDetail, this.imagePath});
}
List<ProjectModel> dummyProjectModel = [
  ProjectModel(
      txtTitle: 'Digital Galleria',
      txtSubTitle: 'Behria Town Islamabad',
      txtDetail:
      'There"s" a refreshing new way of Life coming to Islamabad, which is set to become Pakistan s most desirable lifestyle.',
      imagePath: 'assets/cattle/digital.jpg'),
  ProjectModel(
      txtTitle: 'ZEM ARK',
      txtSubTitle: 'We know that good design means good business',
      txtDetail:
      "There's a refreshing new way of Life coming to Islamabad, which is set most desirable lifestyle.",
      imagePath: 'assets/cattle/zem.jpg'),
  ProjectModel(
      txtTitle: 'Royal Arc',
      txtSubTitle: 'Shopping Mall',
      txtDetail:
      'Envisioned to regally tower over Bahria Town’s most majestic and splendid commercial hub at the Bahria Business District',
      imagePath: 'assets/cattle/royal.jpg'),
  ProjectModel(
      txtTitle: 'B3 Heights',
      txtSubTitle: 'Shopping Mall',
      txtDetail:
      'B3 Heights is a modernistic & flagship project of B3 Developers. B3 Heights is located at an ideal location in Business District, Bahria Town Islamabad',
      imagePath: 'assets/cattle/b3.jpg'),
  ProjectModel(
      txtTitle: 'Modern Clinic Complex',
      txtSubTitle: 'Real Estate',
      txtDetail:
      'Get yourself a profitable deal by booking a Commercial Unit in Modern Clinic Complex',
      imagePath: 'assets/cattle/modren complex.jpg')
];

