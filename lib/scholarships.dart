import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class scholarships extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'scholarships';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Scholarships',
            style: TextStyle(
              fontSize: 53,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),

          //-----------------------------------------------------------------------
          GestureDetector(
            onTap: () {
              const url1 =
                  'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Goldman-Sachs-Scholarship';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Goldman Sachs Global Scholarship and Mentorship Program',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'The Women Enhancing Technology (WeTech®) Goldman Sachs Global Scholarship and Mentorship Program is a partnership between the Institute of International Education (IIE), a leader in a number of the worlds most prestigious scholarship and fellowship programs, and Goldman Sachs (NYSE: GS), a leading global investment bank.',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),

          //------------------------------------------------------------------------------

          GestureDetector(
            onTap: () {
              const url1 =
                  'https://www.iie.org/Programs/WeTech/STEM-Scholarships-for-Women/Qualcomm-Global-Scholars-Program';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Qualcomm Global Scholars Program',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'The WeTech Qualcomm Global Scholars Program serves as one component of the Qualcomm commitment to helping women and girls enter and succeed in technology careers. Through the various WeTech initiatives, Qualcomm is reaching women and girls at each step along the path from early education to a career in STEM.',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),

          //------------------------------------------------

          GestureDetector(
            onTap: () {
              const url1 =
                  'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Juniper-Networks-Scholarship-and-Internship';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Juniper Networks Scholarship and Internship',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Through WeTech, Juniper Networks is investing in building the global pipeline of women in STEM by providing scholarships to current female STEM students in India, Europe, and the United States. Scholarship recipients also complete an internship at a Juniper Networks global office in gaining real-world experience and exposure to a leading multinational technology company.',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),

          //--------------------------------------------------------------
          GestureDetector(
            onTap: () {
              const url1 =
                  'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Juniper-Networks-Scholarship-and-Internship';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Juniper Networks Scholarship and Internship',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Through WeTech, Juniper Networks is investing in building the global pipeline of women in STEM by providing scholarships to current female STEM students in India, Europe, and the United States. Scholarship recipients also complete an internship at a Juniper Networks global office in gaining real-world experience and exposure to a leading multinational technology company.',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),
        ],
      ),
    ));
  }
}
