import 'package:portfolio/constants/social_constants.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/ui/ui.dart';
import 'dart:js' as js;
import '../../../constants/constants.dart';
import 'service_text.dart';
class FooterContents extends StatelessWidget {
  const FooterContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = isMobileView(context: context);

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Social',
              style: GoogleFonts.getFont('Playfair Display').copyWith(
                fontSize: isMobile ? 16 : 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            gapH4,
            SizedBox(
              // height: 100,
              width: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: socialMedia.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: const Color(0xffC1C1F4),
                      splashColor: Colors.white,
                      onTap: () {
                        js.context.callMethod('open', [socialMedia[index].url]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          socialMedia[index].name,
                          style: GoogleFonts.getFont('Barlow').copyWith(
                            fontSize: isMobile ? 14 : 17,
                            fontWeight: FontWeight.w400,
                            color: AppColor.disable,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
        isMobile ? gapW16 : gapW8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Services',
              style: GoogleFonts.getFont('Playfair Display').copyWith(
                fontSize: isMobile ? 16 : 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            gapH4,
            ServiceText(
              fontSize: isMobile ? 14.0 : null,
              service: 'App Development',
            ),
            ServiceText(
              fontSize: isMobile ? 14.0 : null,
              service: 'UI/UX Design',
            ),
            ServiceText(
              fontSize: isMobile ? 14.0 : null,
              service: 'Web Development',
            ),
          ],
        )
      ],
    );
  }
}
