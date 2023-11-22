import 'package:flutter/material.dart';
import 'package:flutter_project_skeleton/utils/helpers/extensions.dart';

class DateTimePickerService {
  datePicker(
    BuildContext context,
  ) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime(2050),
      firstDate: DateTime.now(),
      useRootNavigator: false,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Theme.of(context).colorScheme.primary,
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.secondary,
            ),
            dialogBackgroundColor: Colors.white, //Background color
          ),
          child: child!,
        );
      },
    );
    if (date != null) {
      {
        return date;
      }
    } else {
      return null;
    }
  }

  dateRangePicker(BuildContext context) async {
    final DateTimeRange? dateRange = await showDateRangePicker(
      context: context,
      lastDate: DateTime(2050),
      firstDate: DateTime.now(),
      useRootNavigator: false,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Theme.of(context).colorScheme.secondary,
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.secondary,
            ),
            dialogBackgroundColor: Colors.white, //Background color
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: 350.0, maxHeight: 600),
                child: child,
              )
            ],
          ),
        );
      },
    );
    if (dateRange != null) {
      return {
        "availableFrom": dateRange.start.toFormattedNumberDateTimeString(),
        "availableTo": dateRange.end.toFormattedNumberDateTimeString(),
      };
    } else {
      return null;
    }
  }

  timePicker(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      useRootNavigator: false,
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Theme.of(context).colorScheme.secondary,
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.secondary,
            ),
            dialogBackgroundColor: Colors.white, //Background color
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: 350.0, maxHeight: 600),
                child: child,
              )
            ],
          ),
        );
      },
    );
    if (timeOfDay != null) {
      return timeOfDay.toDateTime();
    } else {
      return null;
    }
  }
}
