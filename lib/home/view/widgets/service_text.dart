import 'package:portfolio/constants/app_color.dart';

import '../../../ui/ui.dart';

class ServiceText extends StatelessWidget {
  const ServiceText({
    super.key,
    required this.service,
    this.fontSize,
  });

  final String service;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      service,
      style: GoogleFonts.getFont('Barlow').copyWith(
        fontSize: fontSize ?? 17,
        fontWeight: FontWeight.w400,
        color: AppColor.disable,
      ),
    );
  }
}
