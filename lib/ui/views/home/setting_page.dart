import 'package:flutter/material.dart';
import 'package:matric/core/view_models/dark_theme_model.dart';
import 'package:matric/locator.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollableList(
      paddingTop: 60,
      paddingInBetween: 15.0,
      children: [
        SwitchListTileWithIcon(
          value: locator<DarkThemeModel>().darkTheme,
          onChanged: (value) => locator<DarkThemeModel>().darkTheme = value,
          leading: Icon(Icons.wb_sunny),
          title: Text('Dark Mode'),
          subtitle:
              Text('Dark theme can reduce eye strain in low-light conditions'),
        ),
        SwitchListTileWithIcon(
          value: false,
          onChanged: (_) {},
          leading: Icon(Icons.remove_red_eye),
          title: Text('Show Answer'),
          subtitle: Text('Show answer after choosing an answer'),
        ),
        Divider(),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.info),
          title: Text('About Us'),
        )
      ],
    );
  }
}

class SwitchListTileWithIcon extends StatefulWidget {
  SwitchListTileWithIcon({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.title,
    this.subtitle,
    this.leading,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;
  final Widget title;
  final Widget subtitle;
  final Icon leading;
  @override
  _SwitchListTileWithIconState createState() => _SwitchListTileWithIconState();
}

class _SwitchListTileWithIconState extends State<SwitchListTileWithIcon> {
  bool _value;
  ValueChanged<bool> _onChanged;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _onChanged = (value) {
      setState(() => _value = value);
      widget.onChanged(value);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.leading ?? Container(),
        Expanded(
          child: SwitchListTile(
            value: _value,
            onChanged: _onChanged,
            title: widget.title,
            subtitle: widget.subtitle,
          ),
        ),
      ],
    );
  }
}
