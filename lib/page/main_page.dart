import 'package:custom_options/model/app/option_value_model.dart';
import 'package:custom_options/widget/option_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Options")),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OptionWidget(
              textColor: Colors.black,
              selectedColor: Colors.red,
              unselectedColor: Colors.grey,
              groupValue: _selectedValue,
              scrollDirection: Axis.horizontal,
              items: [
                OptionValueModel(title: "A", value: "a"),
                OptionValueModel(title: "B", value: "b"),
                OptionValueModel(title: "C", value: "c"),
              ],
              onChanged: (value) {
                //ketika selected item berubah
                print(value);
              },
            ),
            Divider(),
            OptionWidget(
              textColor: Colors.black,
              selectedColor: Colors.red,
              unselectedColor: Colors.grey,
              groupValue: _selectedValue,
              scrollDirection: Axis.vertical,
              items: [
                OptionValueModel(title: "A", value: "a"),
                OptionValueModel(title: "B", value: "b"),
                OptionValueModel(title: "C", value: "c"),
              ],
              onChanged: (value) {
                //ketika selected item berubah
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
