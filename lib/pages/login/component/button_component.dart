import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
   
   ButtonComponent({
    super.key,
    required this.title,
    required this.function,
  });

  final String title;
  void Function()? function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),
        height: 57,
        width: MediaQuery.of(context).size.width,
        child: Text(
          title,
          style:  TextStyle(color:Theme.of(context).colorScheme.onSecondary,fontSize: 22),
        ),
      ),
    );
  }
}
