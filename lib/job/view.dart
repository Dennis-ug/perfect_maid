import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/job_switch.dart';
import '../utils/size_gen.dart';

class JobView extends StatelessWidget {
  final int index;
  const JobView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Sizing size = Sizing(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          jobType(index),
          style: GoogleFonts.poppins(
            color: Color(0xff20494F),
            fontSize: size.hyt(16),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
