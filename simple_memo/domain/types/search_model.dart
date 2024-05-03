/// SearchModelクラス
class SearchModel {
  const SearchModel({
    required this.id,
    required this.title,
    required this.subtitle,
  });

  /// ID (一意の識別子、例: 'S1', 'S2' など)
  final String id;

  /// タイトル (検索結果の主要なテキスト)
  final String title;

  /// サブタイトル (検索結果の追加的な情報)
  final String subtitle;
}
