import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../application/application_form.dart';
import '../sign/sign.dart';
import '../utils/size_gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Sizing size = Sizing(context);
    return Scaffold(
      drawer: SizedBox(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then(
                        (value) => Get.offAll(
                          () => SignIn(),
                        ),
                      );
                },
                icon: SvgPicture.asset(
                  'assets/svg/log_out.svg',
                  semanticsLabel: 'Acme Logo',
                ),
                label: SizedBox(),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff20494F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.wyt(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.hyt(44),
              ),
              Text(
                "Hello,",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: size.hyt(24),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "How may we serve you\ntoday?",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: size.hyt(20),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.hyt(56),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/svg/laundry.svg',
                    semanticsLabel: 'Acme Logo',
                  ),
                  SvgPicture.asset(
                    'assets/svg/clean.svg',
                    semanticsLabel: 'Acme Logo',
                  ),
                  SvgPicture.asset(
                    'assets/svg/maid.svg',
                    semanticsLabel: 'Acme Logo',
                  )
                ],
              ),
              SizedBox(
                height: size.hyt(48),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/svg/delivery.svg',
                    semanticsLabel: 'Acme Logo',
                  ),
                  SvgPicture.asset(
                    'assets/svg/hire.svg',
                    semanticsLabel: 'Acme Logo',
                  ),
                  SvgPicture.asset(
                    'assets/svg/contact.svg',
                    semanticsLabel: 'Acme Logo',
                  )
                ],
              ),
              SizedBox(
                height: size.hyt(48),
              ),
              GestureDetector(
                onTap: () => Get.to(() => ApplicationForm()),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Want to work with us?",
                      style: GoogleFonts.poppins(
                        fontSize: size.hyt(20),
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
