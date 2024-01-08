import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/home/logic/state_controller.dart';
import 'package:portfolio/home/view/widgets/personal_info_card.dart';
import 'package:portfolio/ui/ui.dart';

import '../../../constants/constants.dart';
import '../home_base_view.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({
    super.key,
    required this.homeSectionKey,
  });

  final GlobalKey<State<StatefulWidget>> homeSectionKey;

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final storeController = Get.find<StateController>();
    final isMobile = isMobileView(context: context);

    return Container(
      height: height / 1.15,
      width: width,
      color: AppColor.background,
      child: Stack(
        key: widget.homeSectionKey,
        children: [
          isMobile
              ? gap0
              : Image.asset(
                  Assets.profileBgSvg,
                  height: isMobile ? height / 2.5 : height,
                  width: width,
                  fit: BoxFit.fill,
                ),
          Positioned(
            top: isMobile ? 30.0 : height / 4,
            left: isMobile ? 40 : 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 42.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  isMobile
                      ? Image.asset(
                          width: width * .65,
                          height: width * .65,
                          Assets.me,
                        )
                      : gap0,
                  isMobile ? gapH12 : gap0,
                  Text(
                    'Hello, my name is',
                    style: GoogleFonts.getFont('Roboto Serif').copyWith(
                      fontSize: isMobile ? 16 : 24,
                      fontWeight: FontWeight.w400,
                      // height: 42,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 10,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 3.5,
                    ),
                  ),
                  Text(
                    'Suraj\nShrestha',
                    style: GoogleFonts.getFont('Roboto Serif').copyWith(
                      fontSize: isMobile ? 35 : 70,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  gapH12,
                  Text(
                    'Mobile Application Developer',
                    style: GoogleFonts.getFont('Roboto Serif').copyWith(
                      fontSize: isMobile ? 16 : 24,
                      fontWeight: FontWeight.w400,
                      // height: 42,
                    ),
                  ),
                  isMobile ? gapH32 : gapH80,
                  const PersonalInfoCard(),
                  gapH32,
                  Row(
                    children: [
                      AppButton(
                        width: 144.0,
                        height: 44.0,
                        text: 'Hire me',
                        onPressed: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Scrollable.ensureVisible(
                              footerKey.currentContext!,
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 1000),
                            );
                          });
                        },
                      ),
                      gapW4,
                      AppButton(
                        width: 144.0,
                        height: 44.0,
                        text: 'Download CV',
                        onPressed: () async {
                          final bytes =
                              await rootBundle.load('assets/cv/CV.pdf');
                          final blob = html.Blob([bytes], 'application/pdf');
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          // Open in a new tab
                          html.window.open(url, '_blank');
                          final anchor = html.AnchorElement(href: url);
                          anchor.download =
                              'suraj_shrestha.pdf'; // Set desired filename
                          anchor.click();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          isMobile
              ? gap0
              : Positioned(
                  left: width / 3.2,
                  top: height / 6,
                  child: Image.asset(
                    width: width * .65,
                    height: height * .65,
                    Assets.me,
                  ),
                ),
        ],
      ),
    );
  }
}
