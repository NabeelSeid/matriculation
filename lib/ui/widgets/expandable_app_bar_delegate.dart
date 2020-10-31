import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:matric/ui/shared/font_styles.dart';

class ExpandableAppBarDelegate extends SliverPersistentHeaderDelegate {
  ExpandableAppBarDelegate({
    @required this.expandedHeight,
    @required this.title,
    this.forceElevated: false,
    this.actions,
  });

  final double expandedHeight;
  final bool forceElevated;
  final String title;
  final List<Widget> actions;

  Tween<double> blurTween;
  Tween<double> reverseBlurTween;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    blurTween = Tween<double>(begin: 1.0, end: 0.0);
    reverseBlurTween = Tween<double>(begin: 0.0, end: 1.0);

    /// path from max extent to min extent. Full path
    /// The last minExtent height make offset jumps 1, reset it to 1.0
    /// gradient fade controller or for any other animation that needs
    /// ?full path
    double offset = (shrinkOffset / (maxExtent - minExtent));
    if (offset > 1) offset = 1.0;

    /// path from max extent to half extent
    /// after half extent offset jumps 1, reset it to 1.0
    /// ?HeadlineTitle fade controller
    double titleHeadlineOffset =
        (shrinkOffset / ((maxExtent - minExtent) * 0.5));
    if (titleHeadlineOffset > 1) titleHeadlineOffset = 1.0;

    /// path from half extent to 85% extent
    /// reset offset to 0 till half path and
    /// reset offset to 1 after 85% extent
    /// ?page title fade controller
    double titleBlurOffset = ((shrinkOffset - ((maxExtent - minExtent) * 0.5)) /
        ((maxExtent - minExtent) * 0.35));
    if (shrinkOffset < (maxExtent - minExtent) * 0.5) titleBlurOffset = 0;
    if (titleBlurOffset > 1) titleBlurOffset = 1.0;

    return LayoutBuilder(
      builder: (_, constraints) {
        return Container(
          decoration: BoxDecoration(
              boxShadow: this.forceElevated
                  ? [BoxShadow(blurRadius: 3.0, color: Colors.black45)]
                  : null),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Opacity(
                    opacity: this.blurTween.lerp(titleHeadlineOffset),
                    child: Center(
                      child: Text(
                        this.title,
                        style: expandedAppBarTitleStyle(context),
                      ),
                    ),
                  ),
                ),
                AppBar(
                  elevation: 0.0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  title: Opacity(
                    opacity: this.reverseBlurTween.lerp(titleBlurOffset),
                    child: Text(
                      this.title,
                      style: headline6(context),
                    ),
                  ),
                  actions: actions,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @SemanticsHintOverrides()
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
