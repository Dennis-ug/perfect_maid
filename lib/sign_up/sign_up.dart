import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/size_gen.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final Sizing size = Sizing(context);
    return Scaffold(
      backgroundColor: const Color(0xff20494F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.wyt(20)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.hyt(72),
              ),
              Text(
                "Happy to have you!",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: size.hyt(24),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Please sign Up for an \naccount.",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: size.hyt(20),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.hyt(48),
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    label: Text(
                      "Email",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: size.hyt(16),
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
              SizedBox(
                height: size.hyt(24),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  label: Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.hyt(16),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.hyt(24),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  label: Text(
                    "Confirm Password",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.hyt(16),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.hyt(32),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text(
              //       "Forgot password?",
              //       style: GoogleFonts.poppins(
              //           decoration: TextDecoration.underline,
              //           decorationColor: const Color(0xff00A6BC),
              //           color: const Color(0xff00A6BC),
              //           fontSize: size.hyt(16),
              //           fontWeight: FontWeight.w400,
              //           fontStyle: FontStyle.italic),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: size.hyt(24),
              // ),
              GestureDetector(
                // onTap: () => Get.to(() => const SignIn()),
                child: Container(
                  height: size.hyt(60),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: size.hyt(20),
                        color: const Color(0xff003941),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.hyt(24),
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: size.hyt(16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xff00A6BC),
                          color: const Color(0xff00A6BC),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
