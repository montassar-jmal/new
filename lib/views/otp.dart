import 'package:flutter/material.dart';

class FlutterOtpTextField extends StatelessWidget {
  final int length;
  final double width;
  final MainAxisAlignment textFieldAlignment;
  final TextInputType keyboardType;
  final Color borderColor;
  final Color filledColor;
  final TextStyle otpFieldStyle;

  const FlutterOtpTextField({
    Key? key,
    required this.length,
    required this.width,
    required this.textFieldAlignment,
    required this.keyboardType,
    required this.borderColor,
    required this.filledColor,
    required this.otpFieldStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: textFieldAlignment,
          children: List.generate(
            length,
                (index) => Container(
              width: width / length - 10,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: keyboardType,
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: filledColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor),
                  ),
                ),
                style: otpFieldStyle.copyWith(fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
