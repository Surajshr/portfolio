import 'package:get/get.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/home/view/widgets/top_view.dart';
import 'package:portfolio/ui/ui.dart';

import '../../constants/constants.dart';
import '../logic/state_controller.dart';
import 'sections/about_section.dart';
import 'sections/experience_section.dart';
import 'sections/footer.dart';
import 'sections/home_section.dart';
import 'sections/portfolio_sectionk.dart';
import 'sections/services_section.dart';

var homeKey = GlobalKey();
var aboutKey = GlobalKey();
var serviceKey = GlobalKey();
var experienceKey = GlobalKey();
var portfolioKey = GlobalKey();
var footerKey = GlobalKey();

class HomeBaseView extends StatefulWidget {
  const HomeBaseView({super.key});

  @override
  State<HomeBaseView> createState() => _HomeBaseViewState();
}

class _HomeBaseViewState extends State<HomeBaseView> {
  @override
  Widget build(BuildContext context) {
    final storeController = Get.find<StateController>();
    final isMobile = isMobileView(context: context);

    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              HomeSection(
                homeSectionKey: homeKey,
              ),
              AboutSection(
                aboutSectionKey: aboutKey,
              ),
              ServicesSection(
                serviceSectionKey: serviceKey,
              ),
              ExperienceSection(
                experienceSectionKey: experienceKey,
              ),
              PortfolioSection(
                portfolioSectionKey: portfolioKey,
              ),
              isMobile
                  ? FooterMobileView(
                      footerKey: footerKey,
                    )
                  : FooterView(
                      footerKey: footerKey,
                    ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 8.h,
          ),
          child: TopView(
            storeController: storeController,
          ),
        ),
        isMobile
            ? Positioned(
                top: 60.h,
                bottom: 60.h,
                child: GestureDetector(
                  onTap: () {
                    storeController.toggleDrawerState();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe5e5e5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.r),
                          bottomLeft: Radius.circular(60.r),
                        ),
                      ),
                      width: 40.w,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 12.0),
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: appBarIcons.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () async {
                                    final clickedTabName = storeController
                                        .extractFileName(appBarIcons[index]);
                                    final selectedKey =
                                        await storeController.getWidgetsKey(
                                      selectedTab: clickedTabName,
                                    );
                                    storeController.selectTabIcon(
                                      selectedTabIcon:
                                          RxString(appBarIcons[index]),
                                    );
                                    Scrollable.ensureVisible(
                                      selectedKey.currentContext ?? context,
                                      curve: Curves.linear,
                                      duration:
                                          const Duration(milliseconds: 1000),
                                    );
                                  },
                                  child: Obx(
                                    () => Padding(
                                      padding: EdgeInsets.only(bottom: 16.h),
                                      child: SvgPicture.asset(
                                        height: 40.h,
                                        width: 40.h,
                                        storeController.activeTabIcon.value
                                                    .toString() ==
                                                appBarIcons[index]
                                            ? appBarActiveIcons[index]
                                            : appBarIcons[index],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      )),
                ),
              )
            : gap0,
      ],
    ));
  }
}
