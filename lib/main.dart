import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              const Sidebar(),
              Expanded(
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFEFF3F4),
                  ),
                  child: Column(
                    children: [
                      const Header(),
                      const SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    CountBoxItem(
                                      title: 'Total Earning',
                                      countText: '242.65K',
                                      note: 'From the running month',
                                      bgColor: Color(0xFFCDC3FF),
                                      boxIcon: Icon(
                                        Icons.local_library,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    CountBoxItem(
                                      title: 'Average Earning',
                                      countText: '17.347K',
                                      note: 'Daily earning of this month',
                                      bgColor: Color(0xFFAAC9FF),
                                      boxIcon: Icon(
                                        Icons.cast_for_education,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    CountBoxItem(
                                      title: 'Conversion Rate',
                                      countText: '74.86%',
                                      note: '+6.4% greater than last month',
                                      bgColor: Color(0xFF92E3B8),
                                      boxIcon: Icon(
                                        Icons.real_estate_agent,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: RegularSellSection(),
                                      ),
                                      Expanded(
                                        child: AnalysisSection(),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(4, 0, 0, 0),
                                        offset: Offset(2, 0),
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Top Store',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(0xFFCDF463),
                                                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                              ),
                                              child: Text(
                                                'Share',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 180,
                                        child: Expanded(
                                          child: SingleChildScrollView(
                                            child: Table(
                                              children: [
                                                TableRow(
                                                  children: [
                                                    TableCell(
                                                      child: Expanded(
                                                        child: Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                          margin: const EdgeInsets.only(bottom: 10),
                                                          decoration: const BoxDecoration(
                                                            border: Border(
                                                              bottom: BorderSide(
                                                                width: 1.0,
                                                                color: Color(0xFFC1C1C1),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Store Name',
                                                            style: GoogleFonts.montserrat(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500,
                                                              color: const Color(0xFF999999),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    TableCell(
                                                      child: Expanded(
                                                        child: Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                          margin: const EdgeInsets.only(bottom: 10),
                                                          decoration: const BoxDecoration(
                                                            border: Border(
                                                              bottom: BorderSide(
                                                                width: 1.0,
                                                                color: Color(0xFFC1C1C1),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Location',
                                                            style: GoogleFonts.montserrat(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500,
                                                              color: const Color(0xFF999999),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    TableCell(
                                                      child: Expanded(
                                                        child: Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                          margin: const EdgeInsets.only(bottom: 10),
                                                          decoration: const BoxDecoration(
                                                            border: Border(
                                                              bottom: BorderSide(
                                                                width: 1.0,
                                                                color: Color(0xFFC1C1C1),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Sell',
                                                            style: GoogleFonts.montserrat(
                                                                fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xFF999999)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    TableCell(
                                                      child: Expanded(
                                                        child: Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                          margin: const EdgeInsets.only(bottom: 10),
                                                          decoration: const BoxDecoration(
                                                            border: Border(
                                                              bottom: BorderSide(
                                                                width: 1.0,
                                                                color: Color(0xFFC1C1C1),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Amount',
                                                            style: GoogleFonts.montserrat(
                                                                fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xFF999999)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const TableRow(
                                                  children: [
                                                    TableCellItem(text: 'Solaris Sparkle'),
                                                    TableCellItem(text: 'Miami, Florida'),
                                                    TableCellItem(text: '102 Quantity'),
                                                    TableCellItem(text: '12.50K'),
                                                  ],
                                                ),
                                                const TableRow(
                                                  children: [
                                                    TableCellItem(text: 'Crimson Dusk'),
                                                    TableCellItem(text: 'Denver, Colorado'),
                                                    TableCellItem(text: '214 Quantity'),
                                                    TableCellItem(text: '07.85K'),
                                                  ],
                                                ),
                                                const TableRow(
                                                  children: [
                                                    TableCellItem(text: 'Indigo Zephyr'),
                                                    TableCellItem(text: 'Orlando, Florida'),
                                                    TableCellItem(text: '143 Quantity'),
                                                    TableCellItem(text: '16.40K'),
                                                  ],
                                                ),
                                                const TableRow(
                                                  children: [
                                                    TableCellItem(text: 'Roseate Crest'),
                                                    TableCellItem(text: 'Las Vegas, Nevada'),
                                                    TableCellItem(text: '185 Quantity'),
                                                    TableCellItem(text: '23.64K'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 300,
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UpgradeSection(),
                                MeetingSection(),
                                TeamSection(),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamSection extends StatelessWidget {
  const TeamSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Team Member',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: const [
                TeamItem(
                  teamAvatar: 'assets/images/user-2.png',
                  name: 'Mahid Ahmed',
                  designation: 'Product Manager',
                ),
                TeamItem(
                  teamAvatar: 'assets/images/user-3.png',
                  name: 'Danial Karl',
                  designation: 'HR Head',
                ),
                TeamItem(
                  teamAvatar: 'assets/images/user.png',
                  name: 'Elena Michel',
                  designation: 'Co-ordinator',
                ),
                TeamItem(
                  teamAvatar: 'assets/images/user-2.png',
                  name: 'Salina Mitso',
                  designation: 'Co-ordinator',
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFAAC9FF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 12,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Add more member',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TeamItem extends StatelessWidget {
  const TeamItem({
    super.key,
    required this.teamAvatar,
    required this.name,
    required this.designation,
  });

  final String teamAvatar;
  final String name;
  final String designation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F5F7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    teamAvatar,
                    height: 30,
                    width: 30,
                  ),
                ),
                const SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      designation,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class MeetingSection extends StatelessWidget {
  const MeetingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFFB8AAFA),
                ),
                child: const Icon(
                  Icons.video_call,
                  size: 15,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                'Daily Meeting',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '12+ Person',
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF5E5D5D),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '8:30 PM',
                style: GoogleFonts.montserrat(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF5E5D5D),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 70,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user-2.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user-3.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Text(
                  'They will conduct the meeting',
                  style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black),
                  overflow: TextOverflow.visible,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF181d19), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Click for meeting link',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UpgradeSection extends StatelessWidget {
  const UpgradeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF1F9AA2),
        image: const DecorationImage(
          image: AssetImage('assets/images/pro-bg.png'),
          fit: BoxFit.contain,
          alignment: Alignment.bottomRight
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upgrade to Pro',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                '\$4.20',
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                ' / Month',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            '\$50 Billed Annually',
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCDF463),
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  'Upgrade Now',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TableCellItem extends StatelessWidget {
  const TableCellItem({
    super.key,
    required this.text,
    this.alignText = Alignment.centerLeft,
  });

  final String text;
  final Alignment alignText;
  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Align(
        alignment: alignText,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),        
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF333333),
            ),
          ),
        ),
      ),
    );
  }
}

class AnalysisSection extends StatelessWidget {
  const AnalysisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More Analysis',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            'There are more to view',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF999999),
            ),
          ),
          const SizedBox(height: 30),
          const AnalysisItem(
            analysisIcon: Icon(
              Icons.signal_cellular_alt,
              size: 15,
            ),
            title: "Store Sell Ratio",
          ),
          const SizedBox(height: 20),
          const AnalysisItem(
            analysisIcon: Icon(
              Icons.data_thresholding,
              size: 15,
            ),
            title: "Top Item Sold",
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Text(
                  'Analysis created by',
                  style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w500, color: const Color(0xFF333333)),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(color: const Color(0xFFCDF463), borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/images/favicon.png',
                    height: 15,
                    width: 15,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnalysisItem extends StatelessWidget {
  const AnalysisItem({
    super.key,
    required this.analysisIcon,
    required this.title,
  });

  final Icon analysisIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(25, 0, 0, 0),
                ),
                child: analysisIcon,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class RegularSellSection extends StatelessWidget {
  const RegularSellSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(4, 0, 0, 0),
            offset: Offset(2, 0),
            blurRadius: 15,
          )
        ],
      ),
      // height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Regular Sell',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCDF463),
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Export',
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: RegularSellChart(),
          )
        ],
      ),
    );
  }
}

class CountBoxItem extends StatelessWidget {
  const CountBoxItem({
    super.key,
    required this.title,
    required this.countText,
    required this.note,
    required this.bgColor,
    required this.boxIcon,
  });

  final String title;
  final String countText;
  final String note;
  final Color bgColor;
  final Icon boxIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color.fromARGB(25, 0, 0, 0)),
                  child: boxIcon,
                ),
                const SizedBox(width: 6),
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    countText,
                    style: GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  Text(
                    note,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF414141),
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              '14 Aug 2023',
              style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF999999)),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFC9C9C9),
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.mark_unread_chat_alt,
                size: 20,
                color: Color(0xFF6A6E6C),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFC9C9C9),
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.notification_important,
                size: 20,
                color: Color(0xFF6A6E6C),
              ),
            ),
            const SizedBox(width: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nora Watson',
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Sales Manager',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF787878),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 200,
      decoration: const BoxDecoration(
          color: Color(0xFFFAFAFA), boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.3), offset: Offset(5, 0), blurRadius: 6)]),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 15),
                children: const [
                  SidebarItem(name: 'Dashboard', icon: Icons.dashboard, status: true),
                  SidebarItem(name: 'Statistics', icon: Icons.insert_chart, status: false),
                  SidebarItem(name: 'Transaction', icon: Icons.receipt, status: false),
                  SidebarItem(name: 'My Team', icon: Icons.people, status: false),
                  SidebarItem(name: 'Sell Reports', icon: Icons.equalizer, status: false),
                  SidebarItem(name: 'Settings', icon: Icons.settings, status: false),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/images/user.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Text(
                    'Nora Watson',
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Sales Manager',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF787878),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 50, 15, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.logout,
                          size: 15,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Log Out',
                          style: GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xFF333333)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  const SidebarItem({
    super.key,
    required this.name,
    required this.icon,
    required this.status,
  });

  final String name;
  final IconData icon;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: status ? const Color(0xFFCDF463) : const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 15,
          ),
          const SizedBox(width: 5),
          Text(
            name,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class RegularSellChart extends StatefulWidget {
  RegularSellChart({super.key});
  final Color leftBarColor = const Color(0xFFCDC3FF);
  final Color rightBarColor = const Color(0xFF8FE5B5);
  final Color avgColor = Colors.yellow;
  @override
  State<StatefulWidget> createState() => RegularSellChartState();
}

class RegularSellChartState extends State<RegularSellChart> {
  final double width = 10;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 18, 10);
    final barGroup2 = makeGroupData(1, 22, 16);
    final barGroup3 = makeGroupData(2, 45, 30);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 29, 24);
    final barGroup6 = makeGroupData(5, 19, 6);
    final barGroup7 = makeGroupData(6, 29, 15);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                makeTransactionsIcon(),
                const SizedBox(
                  width: 38,
                ),
                const Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  '',
                  style: TextStyle(color: Color(0xff77839a), fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 20,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: ((group) {
                        return Colors.grey;
                      }),
                      getTooltipItem: (a, b, c, d) => null,
                    ),
                    touchCallback: (FlTouchEvent event, response) {
                      if (response == null || response.spot == null) {
                        setState(() {
                          touchedGroupIndex = -1;
                          showingBarGroups = List.of(rawBarGroups);
                        });
                        return;
                      }

                      touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                      setState(() {
                        if (!event.isInterestedForInteractions) {
                          touchedGroupIndex = -1;
                          showingBarGroups = List.of(rawBarGroups);
                          return;
                        }
                        showingBarGroups = List.of(rawBarGroups);
                        if (touchedGroupIndex != -1) {
                          var sum = 0.0;
                          for (final rod in showingBarGroups[touchedGroupIndex].barRods) {
                            sum += rod.toY;
                          }
                          final avg = sum / showingBarGroups[touchedGroupIndex].barRods.length;

                          showingBarGroups[touchedGroupIndex] = showingBarGroups[touchedGroupIndex].copyWith(
                            barRods: showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                              return rod.copyWith(toY: avg, color: widget.avgColor);
                            }).toList(),
                          );
                        }
                      });
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 42,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        interval: 1,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: showingBarGroups,
                  gridData: const FlGridData(show: false),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '20K';
    } else if (value == 10) {
      text = '30K';
    } else if (value == 19) {
      text = '40K';
    } else if (value == 29) {
      text = '50K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
          borderRadius: BorderRadius.circular(0),
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
          borderRadius: BorderRadius.circular(0),
        ),
      ],
    );
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
