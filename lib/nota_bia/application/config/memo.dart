import 'package:nota_bia/domain/types/memo.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/domain/types/memo_config.dart';

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
      isChecked: true,
    ),
    const Memo(
      id: 'xxxx-example-03-xxxx',
      text: L10n.ghi,
      isChecked: false,
    ),
  ],
  maxLength: 20
);