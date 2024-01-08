import 'package:portfolio/home/view/widgets/personal_info_card.dart';
import 'package:portfolio/ui/ui.dart';

import '../widgets/footer_content.dart';

class FooterView extends StatefulWidget {
  const FooterView({super.key, required this.footerKey});

  final GlobalKey<State<StatefulWidget>> footerKey;

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widget.footerKey,
      height: 300.h,
      width: 1.sw,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 42.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.dash2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Based in Nepal, working worldwide.',
                  style: GoogleFonts.getFont('Playfair Display').copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                gapH8,
                const PersonalInfoCard()
              ],
            ),
            const FooterContents()
          ],
        ),
      ),
    );
  }
}

class FooterMobileView extends StatefulWidget {
  const FooterMobileView({
    super.key,
    required this.footerKey,
  });

  final GlobalKey<State<StatefulWidget>> footerKey;

  @override
  State<FooterMobileView> createState() => _FooterMobileViewState();
}

class _FooterMobileViewState extends State<FooterMobileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.footerKey,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 42.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Based in Nepal, working worldwide.',
            style: GoogleFonts.getFont('Playfair Display').copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          gapH8,
          const PersonalInfoCard(
            fontSize: 12.0,
            iconHeight: 18.0,
            iconWidth: 18.0,
          ),
          gapH32,
          const FooterContents()
        ],
      ),
    );
  }
}
