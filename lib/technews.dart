import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class technews extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'technews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
            height: 80,
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
                  'https://techcrunch.com/2021/10/02/this-week-in-apps-tiktok-shops-for-advertisers-microsoft-makes-app-store-changes-apples-apps-get-reviews/';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'This Week in Apps: TikTok shops for advertisers, Microsoft makes app store changes, Apple’s apps get reviews',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sarah Perez ',
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
          //-----------------------------------------------------------
          GestureDetector(
            onTap: () {
              const url1 =
                  'https://techcrunch.com/2021/10/02/tesla-delivers-record-breaking-number-of-vehicles-in-third-quarter/';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Tesla delivers record-breaking number of vehicles in third quarter',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kirsten Korosec',
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
                  'https://techcrunch.com/2021/10/02/the-full-stack-approach-but-this-time-sans-status-quo/';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'The full-stack approach, but this time sans status quo .Rinse, rebundle, repeat',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Natasha Mascarenhas ',
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

          //------------------------------------------------------

          GestureDetector(
            onTap: () {
              const url1 =
                  'https://techcrunch.com/2021/10/01/techcrunch-roundup-alternative-financing-web3-adoption-indias-hot-q3-fundraising/';
              _launchURL(url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'TechCrunch+ roundup: Alternative financing, Web3 adoption, India’s hot Q3 fundraising',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Walter Thompson, Annie Saunders',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
