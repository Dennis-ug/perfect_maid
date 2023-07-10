import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/size_gen.dart';
import 'contro.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final _contro = Get.put(SignUpController());

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
              Form(
                key: _contro.signUpForm,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This can't be left blank";
                        }
                        return null;
                      },
                      controller: _contro.email,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This can't be left blank";
                        }
                        return null;
                      },
                      controller: _contro.password,
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
                      controller: _contro.confirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This can't be left blank";
                        }
                        return null;
                      },
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
                  ],
                ),
              ),
              SizedBox(
                height: size.hyt(32),
              ),
              GestureDetector(
                onTap: () {
                  if (_contro.signUpForm.currentState!.validate()) {
                    _contro.creatUser();
                  }
                },
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
