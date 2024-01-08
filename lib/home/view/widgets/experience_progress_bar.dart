import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/ui/ui.dart';

class ExperienceProgressBar extends StatelessWidget {
  const ExperienceProgressBar({
    super.key,
    required this.endValue,
    required this.percentage,
    required this.skillName,
  });

  final double endValue;
  final String percentage;
  final String skillName;

  @override
  Widget build(BuildContext context) {
    final isMobile = isMobileView(context: context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillName,
          style: GoogleFonts.getFont('Barlow').copyWith(
            fontSize: 14,
            color: const Color(0xff758398),
            fontWeight: FontWeight.w400,
          ),
        ),
        gapH4,
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 10, end: endValue),
          duration: const Duration(milliseconds: 1000),
          builder: (context, double value, child) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    height: isMobile ? 15 : 25,
                    width: isMobile?400:500,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    height: isMobile ? 15 : 25,
                    width: value,
                    child: Center(
                      child: Text(
                        percentage,
                        style: GoogleFonts.getFont('Barlow').copyWith(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
