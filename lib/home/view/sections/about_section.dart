import 'package:portfolio/constants/app_strings.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/ui/ui.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({
    super.key,
    required this.aboutSectionKey,
  });

  final GlobalKey<State<StatefulWidget>> aboutSectionKey;

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = isMobileView(context: context);

    return Container(
      key: widget.aboutSectionKey,
      color: const Color(0xfff6f8fa),
      height: isMobile ? null : height,
      padding: EdgeInsets.only(bottom: 30.h),
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 42.w,
        ),
        child: Column(
          mainAxisAlignment:
              isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: const Color(0xff009BDF),
              ),
            ),
            gapH4,
            Text(
              AppStrings.aboutMeH1,
              style: GoogleFonts.getFont('Playfair Display').copyWith(
                fontSize: isMobile ? 14 : 50,
                fontWeight: FontWeight.w800,
              ),
            ),
            isMobile ? gapW12 : gapH68,
            Row(
              children: [
                isMobile
                    ? gap0
                    : Text(
                        AppStrings.aboutMeH2,
                        style: GoogleFonts.getFont('Playfair Display').copyWith(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xff009BDF),
                        ),
                      ),
                isMobile ? gap0 : gapW32,
                Expanded(
                  child: Text(
                    AppStrings.aboutMeBody,
                    softWrap: true,
                    style: GoogleFonts.getFont('Barlow').copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
