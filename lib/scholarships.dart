import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class scholarships extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'scholarships';

  final List<String> scholarshipTitle = <String>[
    'Goldman Sachs Global Scholarship and Mentorship Program',
    'Qualcomm Global Scholars Program',
    'Juniper Networks Scholarship and Internship',
    'Juniper Networks Scholarship and Internship',
    'Juniper Networks Scholarship and Internship'
  ];
  final List<String> scholarshipdesc = <String>[
    'The Women Enhancing Technology (WeTech®) Goldman Sachs Global Scholarship and Mentorship Program is a partnership between the Institute of International Education (IIE), a leader in a number of the worlds most prestigious scholarship and fellowship programs, and Goldman Sachs (NYSE: GS), a leading global investment bank.',
    'The WeTech Qualcomm Global Scholars Program serves as one component of the Qualcomm commitment to helping women and girls enter and succeed in technology careers. Through the various WeTech initiatives, Qualcomm is reaching women and girls at each step along the path from early education to a career in STEM.',
    'Through WeTech, Juniper Networks is investing in building the global pipeline of women in STEM by providing scholarships to current female STEM students in India, Europe, and the United States. Scholarship recipients also complete an internship at a Juniper Networks global office in gaining real-world experience and exposure to a leading multinational technology company.',
    'Through WeTech, Juniper Networks is investing in building the global pipeline of women in STEM by providing scholarships to current female STEM students in India, Europe, and the United States. Scholarship recipients also complete an internship at a Juniper Networks global office in gaining real-world experience and exposure to a leading multinational technology company.',
    'Through WeTech, Juniper Networks is investing in building the global pipeline of women in STEM by providing scholarships to current female STEM students in India, Europe, and the United States. Scholarship recipients also complete an internship at a Juniper Networks global office in gaining real-world experience and exposure to a leading multinational technology company.',
  ];
  final List<String> url = <String>[
    'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Goldman-Sachs-Scholarship',
    'https://www.iie.org/Programs/WeTech/STEM-Scholarships-for-Women/Qualcomm-Global-Scholars-Program',
    'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Juniper-Networks-Scholarship-and-Internship',
    'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Juniper-Networks-Scholarship-and-Internship',
    'https://www.iie.org/en/Programs/WeTech/STEM-Scholarships-for-Women/Juniper-Networks-Scholarship-and-Internship'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
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
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              //shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: scholarshipTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    //leading: FlutterLogo(size: 56.0),
                    title: Text(
                      scholarshipTitle[index],
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Newsreader'),
                    ),
                    subtitle: Text(
                      scholarshipdesc[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      _launchURL(url[index]);
                    },
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 10,
                thickness: 3,
                color: Colors.grey,
              ),
            ),
          ),

          //-----------------------------------------------------------------------
        ],
      ),
    ));
  }
}
