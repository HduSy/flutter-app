import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/demo_mid/button_demo.dart';
import 'package:flutter_app/demo_mid/checkbox_demo.dart' as prefix0;
import 'package:flutter_app/demo_mid/floating_action_button.dart';
import 'package:flutter_app/demo_mid/popup_menu_demo.dart';
import 'package:flutter_app/demo_mid/form_demo.dart';
import 'package:flutter_app/demo_mid/list_tile_demo.dart';
import 'package:flutter_app/demo_mid/switch_demo.dart';
import 'package:flutter_app/demo_mid/radio_demo.dart';
import 'package:flutter_app/demo_mid/checkbox_demo.dart';
import 'package:flutter_app/demo_mid/slider_demo.dart';
import 'package:flutter_app/demo_mid/datetime_demo.dart';
import 'package:flutter_app/demo_mid/simple_dialog_demo.dart';
import 'package:flutter_app/demo_mid/alert_dialog.dart';
import 'package:flutter_app/demo_mid/bottom_sheet_demo.dart';
import 'package:flutter_app/demo_mid/snackbar_demo.dart';
import 'package:flutter_app/demo_mid/expansion_panel_demo.dart';
import 'package:flutter_app/demo_mid/chip_demo.dart';
import 'package:flutter_app/demo_mid/datatable_demo.dart';
import 'package:flutter_app/demo_mid/paginated_datatable_demo.dart';
import 'package:flutter_app/demo_mid/card_demo.dart';
import 'package:flutter_app/demo_mid/stepper_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'PopupMenuDemo',
            page: PopupMenuDemo(),
          ),
          ListItem(
            title: 'FormDemo',
            page: FormDemo(),
          ),
          ListItem(
            title: 'CheckBoxDemo',
            page: CheckBoxDemo(),
          ),
          ListItem(
            title: 'SwitchDemo',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'RadioDemo',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'SliderDemo',
            page: SliderDemo(),
          ),
          ListItem(
            title: 'ListTileDemo',
            page: ListTileDemo(),
          ),
          ListItem(
            title: 'DateTimeDemo',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'SimpleDialogDemo',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'AlertDialogDemo',
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: 'BottomSheetDemo',
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: 'SnackBarDemo',
            page: SnackBarDemo(),
          ),
          ListItem(
            title: 'ExpansionPanelDemo',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: 'ChipDemo',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'DataTableDemo',
            page: DataTableDemo(),
          ),
          ListItem(
            title: 'PaginatedDataTableDemo',
            page: PaginatedDataTableDemo(),
          ),
          ListItem(
            title: 'CardDemo',
            page: CardDemo(),
          ),
          ListItem(
            title: 'StepperDemo',
            page: StepperDemo(),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
