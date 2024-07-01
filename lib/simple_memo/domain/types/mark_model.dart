/// Bookmarkモデル
class BookmarkModel {
  const BookmarkModel({
    required this.id,
    required this.memo,
  });

  /// ブックマークのID ('1', '2'など他と被らないもの)
  final String id;

  /// ブックマークされたToDoのID
  final String memo;
}
