import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class Uploader {
  final storageRef = FirebaseStorage.instance.ref();
  String id = FirebaseAuth.instance.currentUser!.uid;
  final ImagePicker _picker = ImagePicker();

  Future<String> uploadFile(String name) async {
    XFile? selected = await _picker.pickImage(source: ImageSource.gallery);
    File file = File(selected!.path);
    if (file.existsSync()) {
      UploadTask uploadTask = storageRef.child("$id/${id}_$name").putFile(file);
      var downloadUrl = await (await uploadTask).ref.getDownloadURL();
      return downloadUrl.toString();
    }
    return "";
  }
}

/*uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
  switch (taskSnapshot.state) {
    case TaskState.running:
      final progress =
          100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
      print("Upload is $progress% complete.");
      break;
    case TaskState.paused:
      print("Upload is paused.");
      break;
    case TaskState.canceled:
      print("Upload was canceled");
      break;
    case TaskState.error:
    // Handle unsuccessful uploads
      break;
    case TaskState.success:
    // Handle successful uploads on complete
    // ...
      break;
  }
});*/
