import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class BasicEndDateTimeField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd at HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: DateTimeField (
          style: TextStyle(
              color: Colors.white
          ),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  left: 30, right: 20, top: 10, bottom: 10),
              labelText: 'End timing of event  (${format.pattern})',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),

              labelStyle:
              TextStyle(fontSize: 19, color: Colors.white)),
          format: format,
          onShowPicker: (context, currentValue) async {
            final date = await showDatePicker(
                context: context,
                firstDate: DateTime(2020),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
            if (date != null) {
              final time = await showTimePicker(
                context: context,
                initialTime:
                TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
              );
              return DateTimeField.combine(date, time);
            } else {
              return currentValue;
            }
          },

        ),
      ),


    ]
    );
  }
}