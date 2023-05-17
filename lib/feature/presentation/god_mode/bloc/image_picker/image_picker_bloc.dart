import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  String? imagePath;

  String? getImagePath() {
    return imagePath;
  }

  ImagePickerBloc() : super(ImagePickerInitial()) {
    String? imagePath;
    final picker = ImagePicker();
    on<PickImageFromCamera>(
      (event, emit) async {
        final pickedImage = await picker.pickImage(source: ImageSource.camera);
        if (pickedImage != null) {
          imagePath = pickedImage.path;
          emit(ImagePicked(imagePath: pickedImage.path));
        }
      },
    );
    on<PickImageFromGallery>(
      (event, emit) async {
        final pickedImage = await picker.pickImage(source: ImageSource.gallery);
        if (pickedImage != null) {
          imagePath = pickedImage.path;
          emit(ImagePicked(imagePath: pickedImage.path));
        }
      },
    );
  }
}
