import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class technews extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'technews';

  final List<String> newstitle = <String>[
    'This Week in Apps: TikTok shops for advertisers, Microsoft makes app store changes, Apple’s apps get reviews',
    'Tesla delivers record-breaking number of vehicles in third quarter',
    'The full-stack approach, but this time sans status quo .Rinse, rebundle, repeat',
    'TechCrunch+ roundup: Alternative financing, Web3 adoption, India’s hot Q3 fundraising',
    'TechCrunch+ roundup: Alternative financing, Web3 adoption, India’s hot Q3 fundraising',
    'TechCrunch+ roundup: Alternative financing, Web3 adoption, India’s hot Q3 fundraising'
  ];
  final List<String> newsauthor = <String>[
    'Sarah Perez',
    'Kirsten Korosec',
    'Natasha Mascarenhas',
    ' Walter Thompson, Annie Saunders',
    ' Walter Thompson, Annie Saunders',
    ' Walter Thompson, Annie Saunders'
  ];
  final List<String> url = <String>[
    'https://techcrunch.com/2021/10/02/this-week-in-apps-tiktok-shops-for-advertisers-microsoft-makes-app-store-changes-apples-apps-get-reviews/',
    'https://techcrunch.com/2021/10/02/tesla-delivers-record-breaking-number-of-vehicles-in-third-quarter/',
    'https://techcrunch.com/2021/10/02/the-full-stack-approach-but-this-time-sans-status-quo/',
    'https://techcrunch.com/2021/10/01/techcrunch-roundup-alternative-financing-web3-adoption-indias-hot-q3-fundraising/',
    'https://techcrunch.com/2021/10/01/techcrunch-roundup-alternative-financing-web3-adoption-indias-hot-q3-fundraising/',
    'https://techcrunch.com/2021/10/01/techcrunch-roundup-alternative-financing-web3-adoption-indias-hot-q3-fundraising/'
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
            'Latest News',
            style: TextStyle(
              fontSize: 53,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.grey,
          ),

          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              //shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: newstitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    //leading: FlutterLogo(size: 56.0),
                    title: Text(
                      newstitle[index],
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      newsauthor[index],
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

          //------------------------------------------------------------------------------

          //-----------------------------------------------------------

          //------------------------------------------------------------------------------

          //------------------------------------------------------
        ],
      ),
    ));
  }
}
