import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignUpController extends GetxController {
  final box = GetStorage();

  // Role selection state
  var selectedRole = 'user'.obs;

  // Handle radio button selection
  void selectRole(String role) {
    selectedRole.value = role;
  }

  // Complete signup and save role
  void onSignupComplete() {
    if (selectedRole.isEmpty) {
      Get.snackbar("Error", "Please select a role");
      return;
    }

    // Save role in persistent storage
    box.write('role', selectedRole.value);

    // Navigate to the appropriate dashboard
    switch (selectedRole.value) {
      case 'user':
        Get.offNamed('/dashboard');
        break;
      case 'vendor':
        Get.offNamed('/vendor-dashboard');
        break;
      default:
        Get.offNamed('/unauthorized');
    }
  }
}
