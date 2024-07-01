class ImageModel {
  const ImageModel({
    // 画像のID
    required this.id,
    // 画像のファイルパス
    required this.filePath,
  });

  /// ID
  final String id;

  /// 画像のファイルパス
  final String filePath;
}
