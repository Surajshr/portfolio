import 'package:get/get.dart';
import 'package:portfolio/home/logic/state_controller.dart';
import 'package:portfolio/ui/ui.dart';

import '../../../constants/tab_constant.dart';
import '../../../core/helper/scree_size_helper.dart';

class TopView extends StatefulWidget {
  const TopView({
    super.key,
    required this.storeController,
  });

  final StateController storeController;

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        isMobileView(context: context)
            ? gap0
            : Text(
                'Suraj Shrestha',
                style: GoogleFonts.getFont('Roboto Serif').copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
        isMobileView(context: context)
            ? gap0
            : SizedBox(
                width: width / 2,
                height: 30.h,
                child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: appBarTabs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: InkWell(
                          onTap: () async {
                            final selectedKey =
                                await widget.storeController.getWidgetsKey(
                              selectedTab: appBarTabs[index],
                            );
                            widget.storeController.selectTab(
                              selectedTab: RxString(appBarTabs[index]),
                            );
                            Scrollable.ensureVisible(
                              selectedKey.currentContext ?? context,
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 1000),
                            );
                          },
                          child: Obx(
                            () => Text(
                              appBarTabs[index],
                              style: widget.storeController.activeTab.value
                                          .toString() ==
                                      appBarTabs[index]
                                  ? GoogleFonts.getFont('Barlow').copyWith(
                                      color: const Color(0xff009BDF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    )
                                  : GoogleFonts.getFont('Barlow').copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
      ],
    );
  }
}
