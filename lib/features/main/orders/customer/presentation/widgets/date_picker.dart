
import 'package:flutter/material.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:intl/intl.dart';

class DateRangePickerExample extends StatefulWidget {
  final TextEditingController controller;
  const DateRangePickerExample({super.key, required this.controller});

  @override
  State<DateRangePickerExample> createState() => _DateRangePickerExampleState();
}

class _DateRangePickerExampleState extends State<DateRangePickerExample> {

  Future<void> pickDateRange() async {
    final DateTimeRange? result = await showDateRangePicker(
      locale: const Locale("ru", "RU"),
      context: context,
      initialDateRange: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(days: 7)),
      ),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (result != null) {
      setState(() {
        // Format the dates to 'dd.MM.yyyy'
        final String formattedStart =
            DateFormat('dd.MM.yyyy').format(result.start);
        final String formattedEnd = DateFormat('dd.MM.yyyy').format(result.end);

        widget.controller.text = "$formattedStart – $formattedEnd";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        
        readOnly: true,
        onTap: pickDateRange,
        controller: widget.controller,
        style: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
        decoration: const InputDecoration(
          suffixIcon: Icon(Icons.calendar_today), // Optional calendar icon
        ),
      ),
    );
  }
}