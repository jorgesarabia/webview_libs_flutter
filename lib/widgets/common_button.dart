import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.page,
    required this.label,
  }) : super(key: key);

  final String label;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return page;
          }),
        );
      },
      child: Text(label),
    );
  }
}
