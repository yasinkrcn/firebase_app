// ignore_for_file: prefer_final_fields, unused_field

class AssetsPath {
  static AssetsPath _instance = AssetsPath._init();
  AssetsPath._init();
  factory AssetsPath() {
    return _instance;
  }

  //!HOMEPAGE
  final String facebookPNG = 'assets/img/f.png';
  final String googlePNG = 'assets/img/g.png';
  final String loginBtnPNG = 'assets/img/loginbtn.png';
  final String loginImgPNG = 'assets/img/loginimg.png';
  final String profilePNG = 'assets/img/profile.png';
  final String signUpPNG = 'assets/img/signup.png';
  final String twitterPNG = 'assets/img/t.png';
}
