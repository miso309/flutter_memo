import 'package:simple_memo/domain/types/image_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'images_provider.g.dart';

@riverpod
class ImageModelsNotifier extends _$ImageModelsNotifier {
  @override
  List<ImageModel> build() {
    return const [
      ImageModel(id: 'IMG1', filePath: 'path/to/image1.jpg'),
    ];
  }

  // 新しい画像を追加する
  void addNewImage(String filePath) {
    final newModel = ImageModel(id: 'IMG${state.length + 1}', filePath: filePath);
    state = [...state, newModel];
  }

  // 画像のファイルパスを更新する
  void updateImagePath(String id, String newFilePath) {
    final newModels = state.map((image) {
      if (image.id == id) {
        return ImageModel(id: id, filePath: newFilePath);
      }
      return image;
    }).toList();
    state = newModels;
  }
}