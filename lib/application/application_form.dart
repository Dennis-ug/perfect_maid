import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/size_gen.dart';
import 'controller.dart';

class ApplicationForm extends StatelessWidget {
  ApplicationForm({super.key});
  final _contro = Get.put(ApplicationController());

  @override
  Widget build(BuildContext context) {
    final Sizing size = Sizing(context);
    final dropDownStyle = GoogleFonts.poppins(
      color: Color(0xff20494F),
      fontSize: size.hyt(12),
      fontWeight: FontWeight.w400,
    );

    // Widget bottomShet() => Container();

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
        child: Form(
          key: _contro.applicationKey,
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
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 187, 207, 210),
                              shape: BoxShape.circle,
                            ),
                            child: Obx(
                              () => _contro.dp.value.path.isEmpty
                                  ? Center(
                                      child: SvgPicture.asset(
                                        'assets/svg/account_circle_FILL0_wght200_GRAD0_opsz48 (2).svg',
                                        // color: ,

                                        height: 40,
                                      ),
                                    )
                                  : Image.file(_contro.dp.value),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            debugPrint("Camera btn");
                            Get.bottomSheet(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  height: size.hyt(200),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        onTap: () => _contro
                                            .getImage(ImageSource.camera),
                                        title: Text("Camera"),
                                      ),
                                      Divider(),
                                      ListTile(
                                        onTap: () => _contro
                                            .getImage(ImageSource.gallery),
                                        title: Text("Browse"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                            );
                            // showBottomSheet(
                            //   context: context,
                            //   builder: (context) => Container(
                            //     height: size.hyt(100),
                            //     width: double.infinity,
                            //     decoration: BoxDecoration(
                            //       color: Colors.white,
                            //     ),
                            //     child: Column(
                            //       children: [],
                            //     ),
                            //   ),
                            // );
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            // foregroundDecoration: Decoration.,
                            decoration: BoxDecoration(
                                color: Color(0xff20494F),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg/add_a_photo_FILL0_wght200_GRAD0_opsz48.svg',
                                  // color: ,
                                  theme:
                                      SvgTheme(currentColor: Color(0xffFFFFFF)),
                                  height: 40,
                                ),
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
                          controller: _contro.firstName,
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
                          controller: _contro.SecondName,
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
                    controller: _contro.addres,
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
                    controller: _contro.dob,
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
                    controller: _contro.nin,
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
                    controller: _contro.email,
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
                        value: "Laundary",
                        child: Text(
                          "Laundary",
                          style: dropDownStyle,
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Cleaning services",
                        child: Text(
                          "Cleaning services",
                          style: dropDownStyle,
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Maid services",
                        child: Text(
                          "Maid services",
                          style: dropDownStyle,
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Delivery services",
                        child: Text(
                          "Delivery services",
                          style: dropDownStyle,
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Special hire",
                        child: Text(
                          "Special hire",
                          style: dropDownStyle,
                        ),
                      )
                    ],
                    onChanged: (String? value) {
                      _contro.field = value!;
                    },
                  ),
                  TextFormField(
                    controller: _contro.desp,
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
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
                  ),
                  SizedBox(
                    height: size.hyt(40),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
