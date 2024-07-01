class L10n {
  static const statusTodo = '予定';
  static const statusDoing = '進行中';
  static const statusDone = '完了';
  static const edit = '編集';
  static const createNew = '新規作成';
  static const delete = '削除';
  static const save = '保存';
  static const ok = 'OK';

  static const userName = 'まい';
  static const userIconUri = 'assets/images/user-icon.png';

  static const home = 'ホーム';
  static const add = '作成';
  static const myFolder = 'フォルダ';

  static const allDocument = 'すべてのドキュメント';
  static const calendar = 'カレンダー';
  static const favorite = 'お気に入り';
  static const uncategorized = "未分類";
  static const template = 'マイテンプレート';
  static const contents = '公開コンテンツ';

  static const userHistory = '履歴';
  static const share = '私と共有';

  static const folder = 'フォルダー';
  static const folderTitle = 'All';
  static const folderTextMessage = 'ドキュメントを整理するためのフォルダを作成する';
  static const all = 'Allで検索';
  static const quick = 'クイック起動';

  static const userHistoryMessage = '閲覧したドキュメントがここに表示されます';
  static const shareMessage = 'あなたと共有されているドキュメントがここに表示されます';

  static const customization = 'カスタマイズ';

  static const tooLongTextMessage = '入力文字が長すぎます';
}

class TabBarConfig {
  static const initialIndex = 2;
  static const animationMillisec = 200;
  static const selectedFlex = 2;
}

class DesignSize {
  const DesignSize._({
    required this.tabBarH,
    required this.overflowH,
    required this.dividerW,
    required this.padding,
    required this.arrowW,
    required this.fontSize,
    required this.fontBorderW,
    required this.fontSpacing,
    required this.shadowH,
    required this.iconH,
    required this.highlightW,
  });

  final double tabBarH; // タブバーの高さ
  final double overflowH; // アイコンが上にはみ出す高さ
  final double dividerW; // 区切り線の幅
  final double padding; // アイコンの周りの余白
  final double arrowW; // 矢印の幅
  final double fontSize; // フォントの大きさ
  final double fontBorderW; // フォントのボーダーの幅
  final double fontSpacing; // フォントの間隔
  final double shadowH; // 影の高さ
  final double iconH; // アイコンの高さ
  final double highlightW; // ハイライトの幅

  static const expectedW = 1200.0;

  factory DesignSize(double actualW) {
    final r = actualW / expectedW;
    return DesignSize._(
      tabBarH: r * 200.0,
      overflowH: r * 25.0,
      dividerW: r * 4.0,
      padding: r * 15.0,
      arrowW: r * 40.0,
      fontSize: r * 32.0,
      fontBorderW: r * 6.0,
      fontSpacing: r * 2.0,
      iconH: r * 170.0,
      highlightW: r * 400.0,
      shadowH: r * 18.0,
    );
  }
}