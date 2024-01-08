import 'package:portfolio/ui/ui.dart';

import '../../../constants/constants.dart';

class SkillDescriptionCard extends StatelessWidget {
  const SkillDescriptionCard({
    super.key,
    required this.roleDuration,
    required this.companyName,
    required this.jobRole,
    required this.jobDescription,
  });

  final String roleDuration;
  final String companyName;
  final String jobRole;
  final String jobDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              roleDuration,
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              companyName,
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColor.disable,
              ),
            )
          ],
        ),
        gapW12,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              jobRole,
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppColor.textColor,
              ),
            ),
            gapH4,
            SizedBox(
              width: 100.w,
              child: Text(
                jobDescription,
                style: GoogleFonts.getFont('Barlow').copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class SkillDescriptionMobileView extends StatelessWidget {
  const SkillDescriptionMobileView({
    super.key,
    required this.roleDuration,
    required this.companyName,
    required this.jobRole,
    required this.jobDescription,
  });

  final String roleDuration;
  final String companyName;
  final String jobRole;
  final String jobDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          roleDuration,
          style: GoogleFonts.getFont('Barlow').copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          companyName,
          style: GoogleFonts.getFont('Barlow').copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColor.disable,
          ),
        ),
        Text(
          jobRole,
          style: GoogleFonts.getFont('Barlow').copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.textColor,
          ),
        ),
        gapH4,
        SizedBox(
          child: Text(
            jobDescription,
            style: GoogleFonts.getFont('Barlow').copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,

            ),
          ),
        )
      ],
    );
  }
}
