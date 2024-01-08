import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class VideoController extends GetxController {
  RxString videoPath = ''.obs;

  Future getVideo() async{
    final ImagePicker picker = ImagePicker();
    final video = await picker.pickVideo(source: ImageSource.camera);

    if(video != null){
      videoPath.value = video.path.toString();
    }
  }

}
