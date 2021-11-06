import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:intl/intl.dart';


class DatePicker extends StatelessWidget {
  final Function onSaved;
  final format = DateFormat("dd-MM-yyyy");
  final String labelText;
  final Function onChanged;

  DatePicker( {Key key, this.onSaved, this.onChanged, this.labelText, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return  Container(
     // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
      ),
      child: DateTimePicker(

        type: DateTimePickerType.date,
        dateMask: 'yyyy/MM/dd',
        initialValue: DateTime.now().toString(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        icon: Icon(Icons.event,color:LabelColor,),
        dateLabelText:labelText,
        //locale: Locale('en', 'US'),
        onChanged: onChanged,
        onSaved:onSaved,
      ),
    );
  }
}
