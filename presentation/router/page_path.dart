/// 画面ID
enum PageId {
  home,
  memo,
}

/// 画面パス
extension PagePath on PageId {
  String get path => switch (this) {
    PageId.home => '/list',
    PageId.memo => '/memo/:id'
  };
}

/// 画面名
extension PageName on PageId {
  String get routeName => switch (this) {
    PageId.home => 'home',
    PageId.memo => 'memo',
  };
}