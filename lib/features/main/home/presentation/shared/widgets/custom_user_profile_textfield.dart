import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

// ignore: must_be_immutable
class CustomProfileTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool obscureText;
  final Widget suffixIcon;
  final TextAlign textAlign;
  final bool hasValidator;
  final Function(String? value) validator;
  final List<TextInputFormatter>? textInputFormatter;
  final bool onlyRead;
  const CustomProfileTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      required this.textInputType,
      required this.obscureText,
      required this.suffixIcon,
      this.hasValidator = false,
      this.textInputFormatter,
      this.textAlign = TextAlign.center,
      required this.validator,
      this.onlyRead = false});

  @override
  State<CustomProfileTextField> createState() => _CustomProfileTextFieldState();
}

class _CustomProfileTextFieldState extends State<CustomProfileTextField> {
  bool isObscured = false;
  @override
  void initState() {
    isObscured = widget.obscureText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.labelText,
          style: AppFonts.w400s16,
        ),
        TextFormField(
            controller: widget.controller,
            keyboardType: widget.textInputType,
            textAlign: widget.textAlign,
            cursorColor: AppColors.borderColorGrey,
            obscureText: widget.obscureText ? isObscured : false,
            obscuringCharacter: "*",
            readOnly: widget.onlyRead ,
            style: AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
            inputFormatters: widget.textInputFormatter,
            decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                    child: isObscured
                        ? widget.suffixIcon
                        : widget.obscureText
                            ? const Icon(Icons.visibility_off_outlined)
                            : widget.suffixIcon),
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 24.h, maxWidth: 24.w),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xffA0A0A0))),
                hintText: widget.hintText,
                hintStyle:
                    AppFonts.w700s20.copyWith(color: const Color(0xffA0A0A0)),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(width: 1))),
            validator: (value) => widget.validator(value)),
      ],
    );
  }
}
