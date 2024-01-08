import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/ui/ui.dart ';

import '../../../constants/constants.dart';

class PortfolioSection extends StatefulWidget {
  const PortfolioSection({
    super.key,
    required this.portfolioSectionKey,
  });

  final GlobalKey<State<StatefulWidget>> portfolioSectionKey;

  @override
  State<PortfolioSection> createState() => _PortfolioSectionState();
}

class _PortfolioSectionState extends State<PortfolioSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = isMobileView(context: context);

    return Container(
      key: widget.portfolioSectionKey,
      color: AppColor.background,
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: 42.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Portfolio',
            style: GoogleFonts.getFont('Playfair Display').copyWith(
              fontSize: isMobile ? 16 : 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          gapH12,
          isMobile
              ? Column(
                  children: [
                    Container(
                      height: height / 2,
                      width: width,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: Image.asset(Assets.goodVibes),
                    ),
                    gapH12,
                    Container(
                      height: height / 4,
                      width: width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        child: Image.asset(
                          Assets.songsNepal,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height / 1.4,
                      width: width / 3.7,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: Image.asset(Assets.goodVibes),
                    ),
                    gapW8,
                    Column(
                      children: [
                        Container(
                          height: height / 2.6,
                          width: width / 3,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              8.r,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8.r,
                            ),
                            child: Image.asset(
                              Assets.songsNepal,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        gapH8,
                        Container(
                          height: height / 2.6,
                          width: width / 3,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              8.r,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
        ],
      ),
    );
  }
}
