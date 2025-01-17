

enum ImageSrc {
  camera('Camera', 100),
  gallery('Gallery', 200);

  const ImageSrc(this.label, this.value);
  final String label;
  final int value;
}
