import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(SwipeRestriction());

class SwipeRestriction extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewRestriction(),
    );
  }
}

class ViewRestriction extends StatefulWidget {
  @override
  _ViewRestrictionState createState() => _ViewRestrictionState();
}

class _ViewRestrictionState extends State<ViewRestriction> {
  late DateTime _minDate, _maxDate;

  @override
  void initState() {
    _minDate = DateTime(2020, 3, 5, 9, 0, 0);
    _maxDate = DateTime(2020, 3, 25, 9, 0, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
        child: SfDateRangePicker(
          view: DateRangePickerView.month,
          minDate: _minDate,
          maxDate: _maxDate,
        ),
      ),
    );
  }
}
