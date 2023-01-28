import 'package:flutter/material.dart';

class UserSideTermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: _mediaQueryWidth * 0.8,
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffECECEC),
                  borderRadius: BorderRadius.circular(8)),
              width: _mediaQueryWidth * 0.9,
              child: Text(
                "Help protect your website and its users with clear "
                "and fair website terms and conditions. These "
                "terms and conditions for a website set out key "
                "issues such as acceptable use, privacy, cookies,"
                " registration and passwords, intellectual property,"
                " links to other sites, termination and disclaimers "
                "of responsibility. Terms and conditions are used and"
                " necessary to protect a website owner from liability"
                " of a user relying on the information or the goods "
                "provided from the site then suffering a loss.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: _mediaQueryWidth * 0.9,
                child: Text(
                  "Last Update on 24 Sept, 2021",
                  style: TextStyle(
                      color: Color(0xff767676),
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffECECEC),
                  borderRadius: BorderRadius.circular(8)),
              width: _mediaQueryWidth * 0.9,
              child: Text(
                "Help protect your website and its "
                "users with clear and fair website "
                "terms and conditions. These terms "
                "and conditions for a website set o"
                "ut key issues such as acceptable use"
                ", privacy, cookies, registration and "
                "passwords, intellectual property, link"
                "s to other sites, termination and disclai"
                "mers of responsibility. Terms and conditio"
                "ns are used and necessary to protect a websi"
                "te owner from liability of a user relying on"
                " the information or the goods provided from "
                "the site then suffering a loss.Help protect "
                "your website and its users with clear and fai"
                "r website terms and conditions. These terms an"
                "d conditions for a website set out key issues s"
                "uch as acceptable use, privacy, cookies, regist"
                "ration and passwords, intellectual property, li"
                "nks to other sites, termination and disclaimers"
                " of responsibility. Terms and conditions are us"
                "ed and necessary to protect a website owner "
                " liability of a user relying on the information"
                " or the goods provided from the site then ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
