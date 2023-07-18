import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/job_switch.dart';
import '../utils/size_gen.dart';
import 'contro.dart';

class JobView extends StatelessWidget {
  final int index;
  JobView({
    super.key,
    required this.index,
  });
  final _contro = Get.put(JobViewers());

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
      body: FutureBuilder(
          future: _contro.getJobApplication(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // json.decode(snapshot.data.toString());
              QuerySnapshot data = snapshot.data;
              final apps = data.docs
                  .where(
                      (element) => element['info']['field'] == jobType(index))
                  .toList();
              // final dp = data['dp'];
              return ListView.builder(
                itemCount: apps.length,
                itemBuilder: (cnx, index) {
                  final info = apps[index].data() as Map<String, dynamic>;
                  return ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        info['dp'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      '${info['info']['first_name']} ${info['info']['sec_name']}',
                      style: GoogleFonts.poppins(
                        color: Color(0xff20494F),
                        fontSize: size.hyt(16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address: ${info['info']['addres']}',
                          style: GoogleFonts.poppins(
                            color: Color(0xff20494F).withOpacity(0.5),
                            fontSize: size.hyt(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Service: ${info['info']['field']}',
                          style: GoogleFonts.poppins(
                            color: Color(0xff20494F).withOpacity(0.5),
                            fontSize: size.hyt(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      onTap: () async {
                        debugPrint('Taped');
                        final Uri smsLaunchUri = Uri(
                          scheme: 'tel',
                          path: info['info']['contact'],
                        );
                        await launchUrl(smsLaunchUri);
                      },
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset('assets/svg/call.svg'),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Color(0xff20494F),
                ),
              );
            } else {
              return Text('No data available');
            }
          }),
    );
  }
}
