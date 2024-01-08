import 'package:portfolio/ui/ui.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({
    super.key,
    this.fontSize,
    this.iconWidth,
    this.iconHeight,
  });

  final double? fontSize;
  final double? iconWidth;
  final double? iconHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.maleIcon,
              height: iconHeight,
              width: iconWidth,
            ),
            gapW4,
            Text(
              'Suraj575shrestha@gmail.com',
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: fontSize ?? 20,
                fontWeight: FontWeight.w400,
                // height: 42,
              ),
            )
          ],
        ),
        gapH8,
        Row(
          children: [
            SvgPicture.asset(
              Assets.callIcon,
              height: iconHeight,
              width: iconWidth,
            ),
            gapW4,
            Text(
              '+977-9840220077',
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: fontSize ?? 20,
                fontWeight: FontWeight.w400,
                // height: 42,
              ),
            )
          ],
        ),
      ],
    );
  }
}
