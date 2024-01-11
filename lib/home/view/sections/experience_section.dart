import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/home/view/widgets/experience_progress_bar.dart';
import 'package:portfolio/home/view/widgets/skill_description_card.dart';
import 'package:portfolio/ui/ui.dart';

class ExperienceSection extends StatefulWidget {
  const ExperienceSection({
    Key? key,
    required this.experienceSectionKey,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> experienceSectionKey;

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  double calculateValue({
    required double givenPercent,
    required bool isMobile,
  }) {
    final dividerValue = isMobile ? 400 : 500;
    return (givenPercent / 100) * dividerValue;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = isMobileView(context: context);
    var visibleKey = GlobalKey();
    return Container(
      key: widget.experienceSectionKey,
      color: AppColor.background,
      height: isMobile ? null : height / 1.5,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: 42.w,
      ),
      child: isMobile
          ? Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: GoogleFonts.getFont('Playfair Display').copyWith(
                        fontSize: isMobile ? 16 : 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    isMobile ? gapH12 : gapH48,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        givenPercent: 95,
                        isMobile: isMobile,
                      ),
                      percentage: '95%',
                      skillName: 'Flutter',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 95,
                      ),
                      percentage: '95%',
                      skillName: 'Dart',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 75,
                      ),
                      percentage: '75%',
                      skillName: 'Firebase',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 60,
                      ),
                      percentage: '60%',
                      skillName: 'JetPack',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 60,
                      ),
                      percentage: '60%',
                      skillName: 'Kotlin',
                    ),
                    gapH32,
                    Text(
                      'My Experience',
                      style: GoogleFonts.getFont('Playfair Display').copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    gapH16,
                    SkillDescriptionMobileView(
                      roleDuration: 'Oct 2022 - Present',
                      companyName: 'Click and press Pvt. Ltd',
                      jobRole: 'MOBILE APPLICATION DEVELOPER',
                      jobDescription: AppStrings.skillOneDescription,
                    ),
                    gapH16,
                    SkillDescriptionMobileView(
                      roleDuration: 'May 2022 - Sep 2022      ',
                      companyName: 'Citytech               ',
                      jobRole: 'MOBILE APPLICATION DEVELOPER (INTERN)',
                      jobDescription: AppStrings.skillTwoDesctiption,
                    )
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: GoogleFonts.getFont('Playfair Display').copyWith(
                        fontSize: isMobile ? 16 : 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    isMobile ? gapH12 : gapH48,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        givenPercent: 95,
                        isMobile: isMobile,
                      ),
                      percentage: '95%',
                      skillName: 'Flutter',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 95,
                      ),
                      percentage: '95%',
                      skillName: 'Dart',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 75,
                      ),
                      percentage: '75%',
                      skillName: 'Firebase',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 60,
                      ),
                      percentage: '60%',
                      skillName: 'JetPack',
                    ),
                    gapH12,
                    ExperienceProgressBar(
                      endValue: calculateValue(
                        isMobile: isMobile,
                        givenPercent: 60,
                      ),
                      percentage: '60%',
                      skillName: 'Kotlin',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Experience',
                      style: GoogleFonts.getFont('Playfair Display').copyWith(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    gapH48,
                    SkillDescriptionCard(
                      roleDuration: 'Oct 2022 - Present',
                      companyName: 'Click and press Pvt. Ltd',
                      jobRole: 'MOBILE APPLICATION DEVELOPER',
                      jobDescription: AppStrings.skillOneDescription,
                    ),
                    gapH12,
                    SkillDescriptionCard(
                      roleDuration: 'May 2022 - Sep 2022      ',
                      companyName: 'Citytech               ',
                      jobRole: 'MOBILE APPLICATION DEVELOPER (INTERN)',
                      jobDescription: AppStrings.skillTwoDesctiption,
                    )
                  ],
                )
              ],
            ),
    );
  }
}
