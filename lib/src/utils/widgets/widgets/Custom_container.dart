import 'package:flutter/material.dart';
import 'package:freelanceproject/src/config/AppTheme.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final Color borderColor;
  final double borderRadius;
  final double radius;
  final double padding;
  const CustomContainer({Key? key, required this.child, this.borderColor = const Color(0xFF06283D), this.borderRadius = 0, this.radius = 15, this.padding = 15}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Theme(data: AppTheme.lightTheme().copyWith(
      splashColor: Colors.transparent
    ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radius),
              border: Border.all(
                style: BorderStyle.solid,
                  color: widget.borderColor,
                  width: widget.borderRadius
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: widget.child,
          ),
        ),
    );
  }
}
