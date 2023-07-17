import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/size_gen.dart';

class ApplicationForm extends StatelessWidget {
  const ApplicationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Sizing size = Sizing(context);
    final dropDownStyle = GoogleFonts.poppins(
      color: Color(0xff20494F),
      fontSize: size.hyt(12),
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff20494F),
        title: Text(
          "Application Form",
          style: GoogleFonts.poppins(
            fontSize: size.hyt(20),
            // color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xffFBFEFF),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.wyt(15)),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 187, 207, 210),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/account_circle_FILL0_wght200_GRAD0_opsz48 (2).svg',
                              // color: ,

                              height: 40,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        // foregroundDecoration: Decoration.,
                        decoration: BoxDecoration(
                            color: Color(0xff20494F), shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/add_a_photo_FILL0_wght200_GRAD0_opsz48.svg',
                              // color: ,
                              theme: SvgTheme(currentColor: Color(0xffFFFFFF)),
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // controller: _contro.email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This can't be left blank";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusColor: Color(0xff20494F),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff20494F),
                              ),
                            ),
                            label: Text(
                              "First Name",
                              style: GoogleFonts.poppins(
                                color: Color(0xff20494F),
                                fontSize: size.hyt(16),
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: size.wyt(15),
                    ),
                    Expanded(
                      child: TextFormField(
                        // controller: _contro.email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This can't be left blank";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusColor: Color(0xff20494F),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff20494F),
                              ),
                            ),
                            label: Text(
                              "Second Name",
                              style: GoogleFonts.poppins(
                                color: Color(0xff20494F),
                                fontSize: size.hyt(16),
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "Address",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                TextFormField(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "Date of birth",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                TextFormField(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "NIN",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                TextFormField(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "Email",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                DropdownButtonFormField<String>(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "Desired field",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(18),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  items: [
                    DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Laundary",
                        style: dropDownStyle,
                      ),
                    ),
                    DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Cleaning services",
                        style: dropDownStyle,
                      ),
                    ),
                    DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Maid services",
                        style: dropDownStyle,
                      ),
                    ),
                    DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Delivery services",
                        style: dropDownStyle,
                      ),
                    ),
                    DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Special hire",
                        style: dropDownStyle,
                      ),
                    )
                  ],
                  onChanged: (Object? value) {},
                ),
                TextFormField(
                  // controller: _contro.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This can't be left blank";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Color(0xff20494F),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff20494F),
                        ),
                      ),
                      label: Text(
                        "Self description",
                        style: GoogleFonts.poppins(
                          color: Color(0xff20494F),
                          fontSize: size.hyt(16),
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                SizedBox(
                  height: size.hyt(24),
                ),
                Container(
                  height: size.hyt(60),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff20494F),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff20494F).withOpacity(0.4),
                            offset: Offset(0, 4),
                            blurRadius: 19)
                      ]),
                  child: Center(
                      child: Text(
                    "Apply",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.hyt(20),
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
                SizedBox(
                  height: size.hyt(40),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
