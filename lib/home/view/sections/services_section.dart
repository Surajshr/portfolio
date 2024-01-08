import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/home/view/widgets/custom_service_card.dart';
import 'package:portfolio/ui/ui.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({
    super.key,
    required this.serviceSectionKey,
  });

  final GlobalKey<State<StatefulWidget>> serviceSectionKey;

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = isMobileView(context: context);
    return Container(
      key: widget.serviceSectionKey,
      height: height / 1.5,
      width: width,
      color: AppColor.background,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 42.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What I do',
              style: GoogleFonts.getFont('Playfair Display').copyWith(
                fontSize: isMobile ? 16 : 50,
                fontWeight: FontWeight.w800,
              ),
            ),
            gapH12,
            Text(
              AppStrings.serviceSummary,
              textAlign: TextAlign.justify,
              style: GoogleFonts.getFont('Barlow').copyWith(
                fontSize: isMobile ? 16 : 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            isMobile ? gapH20 : gapH40,
            isMobile
                ? SizedBox(
                    width: width,
                    height: 230,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomServiceCard(
                          serviceDescription: AppStrings.serviceOneDescription,
                          serviceIcon: Assets.mobileIcon,
                          serviceName: 'App Development',
                        ),
                        gapW12,
                        CustomServiceCard(
                          serviceDescription: AppStrings.serviceTwoDescription,
                          serviceIcon: Assets.designIcon,
                          serviceName: 'UI/UX DESIGN',
                        ),
                        gapW12,
                        CustomServiceCard(
                          serviceDescription:
                              AppStrings.serviceThreeDescription,
                          serviceIcon: Assets.designIcon,
                          serviceName: 'PORTRAIT SKETCHING',
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomServiceCard(
                        serviceDescription: AppStrings.serviceOneDescription,
                        serviceIcon: Assets.mobileIcon,
                        serviceName: 'App Development',
                      ),
                      gapW12,
                      CustomServiceCard(
                        serviceDescription: AppStrings.serviceTwoDescription,
                        serviceIcon: Assets.designIcon,
                        serviceName: 'UI/UX DESIGN',
                      ),
                      gapW12,
                      CustomServiceCard(
                        serviceDescription: AppStrings.serviceThreeDescription,
                        serviceIcon: Assets.designIcon,
                        serviceName: 'PORTRAIT SKETCHING',
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
