import 'package:get/get.dart';
import 'package:portfolio/home/view/home_base_view.dart';
import 'package:portfolio/ui/ui.dart';

class StateController extends GetxController {
  final storeName =
      'Thick Shake'.obs; // this represent default value of the state.
  var isDrawerActive = false.obs; // Use obs to make it observable

  // Method to toggle the boolean state
  void toggleDrawerState() {
    isDrawerActive.value = !isDrawerActive.value;
  }

  updateStoreName(String name) {
    storeName(name);
  }

  String extractFileName(String path) {
    // Split the string at the last "/" to isolate the filename portion
    List<String> parts = path.split("/").reversed.toList();
    String filename = parts.first;

    // Remove the extension (if any) using ".split('.').first"
    String extractedName = filename.split('.').first;

    return extractedName.toUpperCase();
  }

  Future<GlobalKey<State<StatefulWidget>>> getWidgetsKey({
    required String selectedTab,
  }) async {
    final GlobalKey<State<StatefulWidget>> selectedTabKey;

    switch (selectedTab) {
      case 'HOME':
        {
          selectedTabKey = homeKey;
          break;
        }
      case 'ABOUT':
        {
          selectedTabKey = aboutKey;
          break;
        }
      case 'SERVICES':
        {
          selectedTabKey = serviceKey;
          break;
        }
      case 'EXPERIENCE':
        {
          selectedTabKey = experienceKey;
          break;
        }
      case 'PORTFOLIO':
        {
          selectedTabKey = portfolioKey;
          break;
        }
      case 'CONTACT':
        {
          selectedTabKey = footerKey;
          break;
        }
      default:
        selectedTabKey = homeKey;
    }
    return selectedTabKey;
  }
}
