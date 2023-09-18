import 'package:flutter/material.dart';

class CourseDropdown extends StatelessWidget {
  final List<String> data;
  final double width;
  final Function onSelected;
  final Color color;
  const CourseDropdown(
      {super.key,
      required this.data,
      required this.width,
      required this.onSelected,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      onSelected: (value) {
        onSelected(value);
      },
      width: width,
      initialSelection: data.first,
      menuStyle: MenuStyle(
        side: MaterialStatePropertyAll(
          BorderSide(color: color),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
      ),
      textStyle: TextStyle(color: color, fontSize: 12),
      inputDecorationTheme: InputDecorationTheme(
        isDense: false,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
      trailingIcon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: color,
        size: 20,
      ),
      selectedTrailingIcon: Icon(
        Icons.keyboard_arrow_up_rounded,
        color: color,
        size: 20,
      ),
      dropdownMenuEntries: data.map((String value) {
        return DropdownMenuEntry<String>(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(color),
          ),
          value: value,
          label: value,
        );
      }).toList(),
    );
  }
}
