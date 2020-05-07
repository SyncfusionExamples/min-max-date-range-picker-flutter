# How to restrict date range picker within the date limit in Flutter date range picker (SfDateRangePicker)?

In the flutter date range picker, you can restrict the swiping behavior using the `minDate` and `maxDate` property.

## Step 1:
In initState(), set the default values for min and max dates.

```xml
DateTime _minDate, _maxDate;
 
@override
void initState() {
  _minDate=DateTime(2020,3, 5,9,0,0);
  _maxDate=DateTime(2020,3,25,9,0,0);
  super.initState();
} 
```
## Step 2:
Place the date picker inside the body of the Scaffold widget with the mentioned min and max date.

```xml
body: Card(
  margin: const EdgeInsets.fromLTRB(50, 150, 50, 150),
  child: SfDateRangePicker(
    view: DateRangePickerView.month,
    minDate: _minDate,
    maxDate: _maxDate,
  ),
)
```
 

## Step 3: 
Please find the entire code for the date restriction as follows.

```xml
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
 
void main() => runApp(SwipeRestriction());
 
class SwipeRestriction extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: ViewRestriction(),
    );
  }
}
 
class ViewRestriction extends StatefulWidget {
  @override
  _ViewRestrictionState createState() => _ViewRestrictionState();
}
 
class _ViewRestrictionState extends State<ViewRestriction> {
  DateTime _minDate, _maxDate;
 
  @override
  void initState() {
    _minDate=DateTime(2020,3, 5,9,0,0);
    _maxDate=DateTime(2020,3,25,9,0,0);
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
        )
    );
  }
}
```
**[View document in Syncfusion Flutter Knowledge base](https://www.syncfusion.com/kb/11329/how-to-restrict-date-range-picker-within-the-date-limit-in-flutter-date-range-picker)**

**Screenshots**

<img alt="selected date" src="http://www.syncfusion.com/uploads/user/kb/flut/flut-856/flut-856_img1.png" width="230" height="400"/>|
