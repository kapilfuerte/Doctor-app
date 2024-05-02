import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

Widget buildBodContent() {
  DateTime date = DateTime.now();
  DateTime mond = date.subtract(const Duration(days: 2));
  String mon = DateFormat('dd').format(mond);
  DateTime tued = date.subtract(const Duration(days: 1));
  String tue = DateFormat('dd').format(tued);
  String wed = DateFormat('dd').format(date);
  DateTime thud = date.add(const Duration(days: 1));
  String thu = DateFormat('dd').format(thud);
  DateTime frid = date.add(const Duration(days: 2));
  String fri = DateFormat('dd').format(frid);
  DateTime satd = date.add(const Duration(days: 3));
  String sat = DateFormat('dd').format(satd);
  DateTime sund = date.subtract(const Duration(days: 3));
  String sun = DateFormat('dd').format(sund);

  return Container(
    height: 260,
    width: 450,
    color: const Color.fromARGB(255, 65, 143, 155),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        '👋 Hello,',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text('Gregory House',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0, right: 13.0),
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.WRzZJlYLzOB8y3yeI5MvfgAAAA?rs=1&pid=ImgDetMain', // Replace this with your image URL
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 13.0, top: 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                hintText: 'Search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 65, 143, 155),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 19, bottom: 7, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('SU', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('MO', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('TU', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('WE', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('TH', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('FR', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('SA', style: TextStyle(fontSize: 16, color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14, left: 5, bottom: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(
                        255, 65, 143, 155), // Filled circle color
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, top: 0, right: 0),
                      child: Text(
                        sun,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14), // Text color
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white, // Filled circle color
                    child: Text(
                      mon,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 65, 143, 155),
                          fontSize: 14), // Text color
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(
                        255, 65, 143, 155), // Filled circle color
                    child: Text(
                      tue,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14), // Text color
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(
                        255, 65, 143, 155), // Filled circle color
                    child: Text(
                      wed,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14), // Text color
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(
                        255, 65, 143, 155), // Filled circle color
                    child: Text(
                      thu,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14), // Text color
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white, // Filled circle color
                    child: Text(
                      fri,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 65, 143, 155),
                          fontSize: 14), // Text color
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 45, 44, 44)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2), // Shadow position
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(
                        255, 255, 255, 255), // Filled circle color
                    child: Text(
                      sat,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 65, 143, 155),
                          fontSize: 14), // Text color
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 29),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 4),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, right: 0),
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget bodywidgets() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 175,
          width: 450,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'SERVICES',
                          style: TextStyle(
                              color: Color.fromARGB(255, 65, 143, 155),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.0),
                        child: Text(
                          'see all',
                          style: TextStyle(
                              color: Color.fromARGB(255, 230, 193, 72),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(),
                              child: Center(
                                child: Stack(
                                  children: [
                                    // Circular container with border
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              75), // half of the width or height to make it circular

                                          border: Border.all(
                                            color: const Color.fromARGB(0, 0, 0,
                                                0), // Set transparent to hide solid border
                                            width: 10,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 242, 253, 255),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                            ], // Adjust gradient colors as needed
                                          )),
                                    ),
                                    // Gradient border on top
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            50, // Adjust according to the width of the circular container and the border width
                                        height: 50,
                                        // Adjust according to the height of the circular container and the border width
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 129, 183, 191),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.coronavirus,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(height: 8.0),
                          const Padding(
                            padding: EdgeInsets.only(top: 0.0),
                            child: Text('Covid-19',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Center(
                                child: Stack(
                                  children: [
                                    // Circular container with border
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              75), // half of the width or height to make it circular

                                          border: Border.all(
                                            color: const Color.fromARGB(0, 0, 0,
                                                0), // Set transparent to hide solid border
                                            width: 10,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 242, 253, 255),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                            ], // Adjust gradient colors as needed
                                          )),
                                    ),
                                    // Gradient border on top
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            50, // Adjust according to the width of the circular container and the border width
                                        height: 50,
                                        // Adjust according to the height of the circular container and the border width
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 129, 183, 191),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.medical_information,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(height: 8.0),
                          const Padding(
                            padding: EdgeInsets.only(top: 0.0),
                            child: Text('Doctors',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(),
                            child:  Center(
                                child: Stack(
                                  children: [
                                    // Circular container with border
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              75), // half of the width or height to make it circular

                                          border: Border.all(
                                            color: const Color.fromARGB(0, 0, 0,
                                                0), // Set transparent to hide solid border
                                            width: 10,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 242, 253, 255),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                            ], // Adjust gradient colors as needed
                                          )),
                                    ),
                                    // Gradient border on top
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            50, // Adjust according to the width of the circular container and the border width
                                        height: 50,
                                        // Adjust according to the height of the circular container and the border width
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 129, 183, 191),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.local_hospital,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          const SizedBox(height: 8.0),
                          const Padding(
                            padding: EdgeInsets.only(top: 0.0),
                            child: Text('Hospitals',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Center(
                                child: Stack(
                                  children: [
                                    // Circular container with border
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              75), // half of the width or height to make it circular

                                          border: Border.all(
                                            color: const Color.fromARGB(0, 0, 0,
                                                0), // Set transparent to hide solid border
                                            width: 10,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 242, 253, 255),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                              Color.fromARGB(
                                                  255, 193, 217, 220),
                                            ], // Adjust gradient colors as needed
                                          )),
                                    ),
                                    // Gradient border on top
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            50, // Adjust according to the width of the circular container and the border width
                                        height: 50,
                                        // Adjust according to the height of the circular container and the border width
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 129, 183, 191),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.medical_services_outlined,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(height: 8.0),
                          const Padding(
                            padding: EdgeInsets.only(top: 0.0),
                            child: Text('Medicine',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 322,
          width: 450,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0, top: 20),
                    child: Text(
                      'DAILY REPORTS',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 230),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 3.0, right: 0),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, right: 0),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 8, right: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Text(
                              'Symptoms of covid to watchout',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 0),
                            child: Text(
                              'for',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Text(
                              'March 06,09.01 PM',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w200),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 0),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://yalibnan.com/wp-content/uploads/2020/05/CoVid-19.jpg', // Replace this with your image URL
                            fit: BoxFit
                                .cover, // Adjust how the image is fitted inside the container
                          ),
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 0, right: 13),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 5.0),
                              child: Text(
                                'Symptoms of covid to watchout',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 0),
                              child: Text(
                                'for',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 5.0),
                              child: Text(
                                'March 06,09.01 PM',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w200),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 110,
                        height: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://yalibnan.com/wp-content/uploads/2020/05/CoVid-19.jpg', // Replace this with your image URL
                            fit: BoxFit
                                .cover, // Adjust how the image is fitted inside the container
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ],
    ),
  );
} // Empty body since content is in the app bar

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  // Extracting the content of the body into a separate widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(225, 247, 231, 231),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(
                  260), // Define custom size for the app bar
              child: AppBar(
                // title: const Text('Your Custom App Bar Title'),
                // Place the extracted body content here
                backgroundColor: const Color.fromARGB(255, 65, 143, 155),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(250),
                  // Match the height of the extracted body content
                  child: buildBodContent(),
                ),
              ),
            ),
            body: bodywidgets()));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/3c/d0/d3/3cd0d3b588751cec10b0ac75428f5745.jpg'),
                        radius: 23,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Good morning,'),
                          Text('pomela')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(Icons.notification_add_outlined)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23, top: 20, bottom: 10),
                child: Text(
                  'Finding doctor is super easy?',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 23),
                child: Container(
                  width: 350,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, left: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Cardiologist',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.heart_broken,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(width: 30),
                    Text(
                      'surgeon',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.cut,
                      color: Colors.grey,
                      size: 16,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0, left: 23.0, right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Appoinment',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text('View details')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 23, right: 23),
                child: Container(
                  width: 350,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.blue,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image.network(
                                'https://img.freepik.com/free-photo/front-view-young-man-white-shirt-blue-gloves-with-blue-mask-blue-space_140725-11157.jpg?size=626&ext=jpg', // Replace this with your image URL
                                fit: BoxFit
                                    .cover, // Adjust how the image is fitted inside the container
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Dr. Bruce lee',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                'surgeon',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                    size: 13,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'lorem ipsum',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.lock_clock,
                                    color: Colors.grey,
                                    size: 13,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '3:30PM-4:50PM',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 18.0, left: 23, right: 21, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text('see all')
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 23,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 120,
                                height: 39,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 119, 172, 178),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_hospital,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Lorem ipsumdo',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 120,
                                height: 39,
                                decoration: BoxDecoration(
                                  // color:  const Color.fromARGB(255, 119, 172, 178),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1, // Adjust the width as needed
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_hospital,
                                      color: Colors.grey,
                                      size: 19,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Lorem ipsumdo',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 120,
                                height: 39,
                                decoration: BoxDecoration(
                                  // color:  const Color.fromARGB(255, 119, 172, 178),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1, // Adjust the width as needed
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_hospital,
                                      color: Colors.grey,
                                      size: 19,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Lorem ipsumdo',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 9.0,
                                ),
                                child: Container(
                                  width: 120,
                                  height: 39,
                                  decoration: BoxDecoration(
                                    // color:  const Color.fromARGB(255, 119, 172, 178),
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1, // Adjust the width as needed
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.local_hospital,
                                        color: Colors.grey,
                                        size: 19,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Lorem ipsumdo',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ]),
              const Padding(
                padding: EdgeInsets.only(left: 23.0, top: 15, bottom: 0),
                child: Text(
                  'Top doctors',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 278,
                      width: 400,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 23, right: 23),
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to the new profile page when container is tapped
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()),
                                    );
                                  },
                                  child: Container(
                                    width: 350,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(1,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.blue,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                child: Image.network(
                                                  'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                                                  fit: BoxFit
                                                      .cover, // Adjust how the image is fitted inside the container
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.0, left: 5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Dr. christopher nolan',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(height: 0),
                                                Text(
                                                  'surgeon',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 0),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 13,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 13,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 13,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 13,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 13,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.euro,
                                                      size: 18,
                                                    ),
                                                    Text('134.99')
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 23, right: 23),
                              child: Container(
                                width: 350,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.blue,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                                              fit: BoxFit
                                                  .cover, // Adjust how the image is fitted inside the container
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10.0, left: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dr. christopher nolan',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Text(
                                              'surgeon',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.euro,
                                                  size: 18,
                                                ),
                                                Text('134.99')
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 23, right: 23),
                              child: Container(
                                width: 350,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.blue,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                                              fit: BoxFit
                                                  .cover, // Adjust how the image is fitted inside the container
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10.0, left: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dr. christopher nolan',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Text(
                                              'surgeon',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.euro,
                                                  size: 18,
                                                ),
                                                Text('134.99')
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 23, right: 23),
                              child: Container(
                                width: 350,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.blue,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                                              fit: BoxFit
                                                  .cover, // Adjust how the image is fitted inside the container
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10.0, left: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dr. christopher nolan',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Text(
                                              'surgeon',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.euro,
                                                  size: 18,
                                                ),
                                                Text('134.99')
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 23, right: 23),
                              child: Container(
                                width: 350,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.blue,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                                              fit: BoxFit
                                                  .cover, // Adjust how the image is fitted inside the container
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10.0, left: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dr. christopher nolan',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Text(
                                              'surgeon',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.euro,
                                                  size: 18,
                                                ),
                                                Text('134.99')
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Other widgets can be added here below the scrolling area
                ],
              ),
            ],
          ),
        ));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 12, bottom: 10),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(); // This will navigate back to the previous screen
                    },
                  ),
                  const SizedBox(
                    width: 111,
                  ),
                  const Text(
                    'Doctor',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, bottom: 17),
              child: Container(
                width: 347,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://thumbs.dreamstime.com/b/doctor-laboratory-coat-gray-background-male-doctor-laboratory-coat-gray-background-applies-cream-to-hands-239088142.jpg', // Replace this with your image URL
                    fit: BoxFit
                        .cover, // Adjust how the image is fitted inside the container
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dr. john shrugs',
                        style: TextStyle(fontSize: 23),
                      ),
                      Text('suregeon',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                          )),
                    ]),
                SizedBox(
                  width: 142,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(
                  width: 19,
                ),
                Icon(Icons.list_alt_outlined, color: Colors.grey, size: 25)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 17.0, left: 24, right: 17, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 233, 251),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('200+'), Text('services')],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 233, 251),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('6+'), Text('Experience')],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 233, 251),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('5+'), Text('Ratings')],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, bottom: 10),
              child: Text(
                'About',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur  exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat  ',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, bottom: 20, top: 20),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, bottom: 20),
              child: Container(
                  width: 347,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://www.soundsurvey.org.uk/maptiles/298_1.jpg', // Replace this with your image URL
                        fit: BoxFit
                            .cover, // Adjust how the image is fitted inside the container
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Center(
                child: Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color of the button
                    borderRadius: BorderRadius.circular(
                        10), // Border radius to make it look like a rectangle
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Action to perform when the button is pressed
                    },
                    child: const Text(
                      'Book Appointment',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 18, // Text size
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('This is the Fourth Screen'));
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _setStatusBarColor();
    });
  }

  void _setStatusBarColor() {
    Color statusBarColor = Colors.white;
    switch (_selectedIndex) {
      case 0:
        statusBarColor = Colors.white; // Color for the first screen
        break;
      case 1:
        statusBarColor = Colors.white; // Color for the second screen
        break;
      case 2:
        statusBarColor = Colors.white; // Color for the third screen
        break;
      case 3:
        statusBarColor = Colors.white; // Color for the third screen
        break;
    }
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarIconBrightness: Brightness.dark, // Adjust as needed
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: _screens[_selectedIndex],
            bottomNavigationBar: Stack(children: [
              BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: Color.fromARGB(255, 243, 219, 7),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Color.fromARGB(255, 243, 219, 7),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color.fromARGB(255, 243, 219, 7),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 30,
                      color: Color.fromARGB(255, 243, 219, 7),
                    ),
                    label: '',
                  ),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                selectedItemColor: const Color.fromARGB(255, 243, 219, 7),
                onTap: _onItemTapped,
              ),
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width /
                        _screens.length *
                        _selectedIndex +
                    MediaQuery.of(context).size.width /
                        (_screens.length * 2.9) -
                    5,
                child: Container(
                  width: 40,
                  height: 3,
                  color: Colors.yellow, // Adjust color as needed
                ),
              ),
            ])));
  }
}

// Replace these with your actual screen widgets

