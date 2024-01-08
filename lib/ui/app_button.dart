import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/ui.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonColor,
    this.width,
    this.height,
    this.textStyle,
    this.isLoading = false,
    this.textAlign,
    this.borderSize,
  });

  final Color? buttonColor;
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? borderSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (!states.contains(MaterialState.disabled)) {
                return buttonColor ?? const Color(0xff009BDF);
              }
              return null; // Defer to the widget's default.
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.white;
              return null; // Defer to the widget's default.
            },
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderSize ?? 8.r),
            ),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Color(0xff009BDF),
                ),
              )
            : Text(
                text,
                style: textStyle ??
                    GoogleFonts.getFont('Barlow').copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                        // height: 42,
                        ),
                textAlign: textAlign ?? TextAlign.center,
              ),
      ),
    );
  }
}
