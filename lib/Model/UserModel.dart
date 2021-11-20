import 'package:cattle_app/mobile/Mobile.dart';

class UserModelList {

  String imagePath;

  String loginTxt;
  String literTxt;
  String priceTxt;
  String catTxt;

  UserModelList({

    this.imagePath,
     this.catTxt,
    this.literTxt,

    this.loginTxt,
    this.priceTxt
  });
}

List<UserModelList> dummyUserModel = [
   UserModelList(




    imagePath: 'assets/cattle/cow3.jpg',
     catTxt: '201',
     literTxt: '102 Liters',
     loginTxt: '12 Aug 2021',
     priceTxt: '10202 PKR'
  ),
  UserModelList(


    imagePath: 'assets/cattle/cow1.png',
      catTxt: '203',
      literTxt: '202 Liters',
      loginTxt: '14 Sep 2021',
      priceTxt: '1022 PKR'
  ),
  UserModelList(


    imagePath: 'assets/cattle/goat.jpg',
      catTxt: '240',
      literTxt: '102 Liters',
      loginTxt: '21 Sep 2021',
      priceTxt: '10202 PKR'
  ),
  UserModelList(

    imagePath: 'assets/cattle/cow2.png',
      catTxt: '240',
      literTxt: '102 Liters',
      loginTxt: '21 Sep 2021',
      priceTxt: '10202 PKR'
  ),
  UserModelList(

    imagePath: 'assets/cattle/cow4.jpg',
      catTxt: '120',
      literTxt: '310 Liters',
      loginTxt: '21 Jul 2021',
      priceTxt: '10202 PKR'
  ),
];
