import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://d27790xjhw2fza.cloudfront.net/as/assets-mem-com/cmi/6/1/1/6/6556116/20150819_134623566_0_orig.jpg/-/peter-sun-silver-spring-md-obituary.jpg?crop=(136.54166666666666%2C18.125%2C390.29166666666663%2C351.625)&cropxunits=696&cropyunits=464&a.balancewhite=true',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('Chairman Vicente Ongtenco', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
              SizedBox(height: 8),
              Text('Head', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w500)),
              SizedBox(height: 30),

              // About me card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),
                    Text(
                      'Chairman Vicente Ongtenco is the founder and chairman of Motortrade Nationwide Corporation, a conglomerate that has been a significant player in the Philippine motorcycle industry since its inception in 1969. Under his leadership, Motortrade has grown to become a leading motorcycle dealership and service provider, offering a wide range of products and services to customers across the country. Ongtenco vision and commitment to quality have made Motortrade a trusted name in the industry, and he continues to play a pivotal role in shaping the company future.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}