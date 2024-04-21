import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

class ReferenceView extends StatelessWidget {
  const ReferenceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المراجع'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 6),
          child: Text(
            reference,
            style: TextStyle(
              fontSize: getTextSize(context).scale(14),
            ),
          ),
        ),
      ),
    );
  }
}
