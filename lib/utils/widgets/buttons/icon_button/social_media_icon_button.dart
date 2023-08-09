import 'package:aviance_india/utils/styles/widgets_color.dart';

import '../../../../values/app_global/app_exports.dart';

class SocialMediaIconButton extends StatefulWidget {
  const SocialMediaIconButton({
    super.key,
    this.onTap,
    this.changeSizeOnClick = false,
  });

  final void Function()? onTap;
  final bool changeSizeOnClick;

  @override
  State<SocialMediaIconButton> createState() => _SocialMediaIconButtonState();
}

class _SocialMediaIconButtonState extends State<SocialMediaIconButton> {
  bool isActive = false;
  bool hasHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => setState(() => hasHover = true),
      onExit: (e) => setState(() => hasHover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        onTapDown: (d) => setState(() => isActive = true),
        onTapUp: (d) => setState(() => isActive = false),
        onTapCancel: () => setState(() => isActive = false),
        child: Container(
          height: (isActive && widget.changeSizeOnClick) ? 35.0 : 40.0,
          width: (isActive && widget.changeSizeOnClick) ? 35.0 : 40.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: (isActive || hasHover)
                ? null
                : Border.all(color: WidgetColors.borderColor),
            borderRadius: BorderRadius.circular(100.0),
            color: (isActive || hasHover) ? WidgetColors.backgroundColor : null,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/icons/google.png',
            height: (isActive && widget.changeSizeOnClick) ? 22.0 : 24.0,
            width: (isActive && widget.changeSizeOnClick) ? 22.0 : 24.0,
            color:
                (isActive || hasHover) ? null : WidgetColors.assetInactiveColor,
          ),
        ),
      ),
    );
  }
}
