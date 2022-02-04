class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toPng('logo');
  String get creditCardChip => toPng('chip');
  String get transfer => toPng('transfer');
  String get withdraw => toPng('withdraw');
  String get more => toPng('more');
  String get deposit => toPng('deposit');
  String get google => toPng('google');
  String get apple => toPng('apple');
  String get profile => toJpeg('profile');

  String toPng(String name) => 'assets/images/$name.png';
  String toJpeg(String name) => 'assets/images/$name.jpeg';
}
