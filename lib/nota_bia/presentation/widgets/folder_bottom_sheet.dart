import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:go_router/go_router.dart';

class FolderBottomSheet extends StatelessWidget {
  const FolderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Container(
      decoration: BoxDecoration(
        color: BrandColor.lightGrey, // ボトムシートの背景色を設定
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Sizes.p16),
          topRight: Radius.circular(Sizes.p16),
        ),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + Sizes.p32, // 余白を追加
        left: Sizes.p16,
        right: Sizes.p16,
        top: Sizes.p16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text(L10n.cansel, style: BrandText.xs),
                  ),
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(L10n.newFolder, style: BrandText.mBold),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.pop(controller.text); // フォルダ名を返してボトムシートを閉じる
                    },
                    child: const Text(L10n.done, style: BrandText.xs),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Sizes.p8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: L10n.newFolder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.p16),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: BrandColor.white, // TextFieldの背景色
            ),
          ),
          const SizedBox(height: Sizes.p16),
        ],
      ),
    );
  }
}
