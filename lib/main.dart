import 'package:get/get.dart';
import 'package:portfolio/core/di/store_biunding.dart';
import 'package:portfolio/home/view/home_base_view.dart';
import 'package:portfolio/ui/ui.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suraj Shrestha',
      initialBinding: StoreBinding(),
      home: const HomeBaseView(),
    );
  }
}
