import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_indicator.dart';

class PageViewWithIndicator extends StatelessWidget {
  const PageViewWithIndicator({
    Key key,
    @required this.bodyPageController,
    @required this.childern,
    this.pages,
  }) : super(key: key);

  final PageController bodyPageController;
  final List<String> pages;
  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PageIndicator(
            bodyPageController: bodyPageController,
            pages: pages ??
                List.generate(
                  childern.length,
                  (index) => (index + 1).toString(),
                ),
          ),
          Expanded(
            child: Container(
              child: PageView(
                controller: bodyPageController,
                children: childern,
              ),
            ),
          )
        ],
      ),
    );
  }
}
