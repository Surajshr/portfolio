import 'package:portfolio/constants/app_color.dart';
import 'package:portfolio/core/helper/scree_size_helper.dart';
import 'package:portfolio/ui/ui.dart';

// class CustomServiceCard extends StatelessWidget {
//   const CustomServiceCard({
//     super.key,
//     required this.serviceDescription,
//     required this.serviceIcon,
//     required this.serviceName,
//   });
//
//   final String serviceName;
//   final String serviceDescription;
//   final String serviceIcon;
//
//   @override
//   Widget build(BuildContext context) {
//     final isMobile = isMobileView(context: context);
//
//     return Container(
//       height: 300.h,
//       width: 70.w,
//       padding: EdgeInsets.all(0.w),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: 4.h),
//             child: SvgPicture.asset(
//               serviceIcon,
//             ),
//           ),
//           gapW4,
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   serviceName,
//                   style: GoogleFonts.getFont('Barlow').copyWith(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 gapH8,
//                 Expanded(
//                   child: Text(
//                     serviceDescription,
//                     style: GoogleFonts.getFont('Barlow').copyWith(
//                       fontSize: 17,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class CustomServiceCard extends StatelessWidget {
  const CustomServiceCard({
    super.key,
    required this.serviceDescription,
    required this.serviceIcon,
    required this.serviceName,
  });

  final String serviceName;
  final String serviceDescription;
  final String serviceIcon;

  @override
  Widget build(BuildContext context) {
    final isMobile = isMobileView(context: context);
    return Container(
      height: isMobile ? 200 : 300.h,
      width: isMobile ? 270 : 70.w,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: isMobile ? const Color(0xffF3F3F3) : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: SvgPicture.asset(
              serviceIcon,
              width: isMobile ? 20 : null,
            ),
          ),
          gapW4,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceName,
                  style: GoogleFonts.getFont('Barlow').copyWith(
                    fontSize: isMobile ? 18 : 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                gapH8,
                Expanded(
                  child: Text(
                    serviceDescription,
                    style: GoogleFonts.getFont('Barlow').copyWith(
                      fontSize: isMobile ? 14 : 17,
                      color: AppColor.disable,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
