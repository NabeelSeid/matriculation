import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/indicator.dart';

class PageIndicator extends StatefulWidget {
  PageIndicator({
    Key key,
    @required this.bodyPageController,
    @required this.pages,
  }) : super(key: key);

  final PageController bodyPageController;
  final List<String> pages;

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  ScrollController _indicatorPageController;
  double size = 40;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _indicatorPageController = PageController(viewportFraction: 0.15);
    widget.bodyPageController
      ..addListener(() {
        _indicatorPageController
            .jumpTo(widget.bodyPageController.offset * 0.15);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: NotificationListener(
        onNotification: (_) {
          double x = (0.5 - (widget.bodyPageController.page % 1)).abs();

          setState(() {
            currentPage = widget.bodyPageController.page.round();
            if (currentPage > 99)
              size = ((20 * (0.5 - x)) + (32 * x)) / 0.5;
            else
              size = ((20 * (0.5 - x)) + (40 * x)) / 0.5;
          });
          return true;
        },
        child: PageView(
          controller: _indicatorPageController,
          pageSnapping: false,
          children: widget.pages.map((page) {
            int i = widget.pages.indexOf(page);
            return Indicator(
              page,
              fontSize: i == currentPage ? size : null,
              onTap: () => widget.bodyPageController.animateToPage(i,
                  duration: Duration(milliseconds: 300), curve: Curves.easeOut),
            );
          }).toList(),
        ),
      ),
    );
  }
}
