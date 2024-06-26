import 'package:cheatsheet/domain/types/memo.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/domain/types/memo_config.dart';

final memoConfig = MemoConfig(
  defaultText: L10n.abc,
  exampleMemos: [
    const Memo(
      id: 'xxxx-example-01-xxxx',
      text: L10n.abc,
      isChecked: false,
    ),
    const Memo(
      id: 'xxxx-example-02-xxxx',
      text: L10n.def,
      isChecked: false,
    ),
    const Memo(
      id: 'xxxx-example-03-xxxx',
      text: L10n.ghi,
      isChecked: false,
    ),
  ],
  maxLength: 20
);