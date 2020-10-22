import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/expandable_app_bar_delegate.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';

class ExpandableAppBar extends StatefulWidget {
  ExpandableAppBar({
    Key key,
    @required this.title,
    @required this.child,
    this.padding: const EdgeInsets.all(10.0),
    this.background,
  }) : super(key: key);

  final String title;
  final Widget child;
  final EdgeInsets padding;
  final Color background;

  @override
  _ExpandableAppBarState createState() => _ExpandableAppBarState();
}

class _ExpandableAppBarState extends State<ExpandableAppBar> {
  ScrollController _controller;
  double _topMargin;
  double _screenHeight;
  double _expandedHeight;

  Color _background;

  @override
  void initState() {
    _controller = ScrollController();
    _topMargin = 0;
    Future.delayed(Duration.zero, () {
      _screenHeight = MediaQuery.of(context).size.height;
      _expandedHeight = _screenHeight * 0.3967;
    });

    _background = widget.background ?? Colors.grey.withOpacity(0.5);

    _controller.addListener(() {
      double newOffset = overlapOffset(_controller.offset);
      if (newOffset != _topMargin) setState(() => _topMargin = newOffset);
    });
    super.initState();
  }

  double overlapOffset(double offset) {
    if (_expandedHeight - offset <= kToolbarHeight)
      return offset - (_expandedHeight - kToolbarHeight);
    else
      return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    Widget normalScaffold = SafeArea(
      child: Column(
        children: [
          AppBar(
            elevation: 0.0,
            leading: Icon(Icons.arrow_back_ios),
            title: Text(
              widget.title,
              style: headline6(context),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: rounded,
                color: _background,
              ),
              child: ClipRRect(
                borderRadius: rounded,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: widget.padding,
                    child: widget.child,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );

    Widget expandableAppBar = SafeArea(
      child: NestedScrollView(
        controller: _controller,
        // Setting floatHeaderSlivers to true is required in order to float
        // the outer slivers over the inner scrollable.
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: ExpandableAppBarDelegate(
                  expandedHeight: screenHeight * 0.3967, title: widget.title),
            ),
          ];
        },
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: _topMargin),
            decoration: BoxDecoration(
              borderRadius: rounded,
              color: _background,
            ),
            child: ClipRRect(
              borderRadius: rounded,
              child: SingleChildScrollView(
                child: Padding(
                  padding: widget.padding,
                  child: widget.child,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return screenHeight > 600 ? expandableAppBar : normalScaffold;
  }
}
