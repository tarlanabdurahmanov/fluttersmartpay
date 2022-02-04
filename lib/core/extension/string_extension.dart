extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
  String get toPng => 'asset/images/$this.png';
}
