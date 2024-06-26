import 'package:cheatsheet/domain/types/memo.dart';

class MemoConfig {
  MemoConfig({
    required this.defaultText,
    required this.maxLength,
    required this.exampleMemos,
});

  final String defaultText;
  final int maxLength;
  final List<Memo> exampleMemos;
}
