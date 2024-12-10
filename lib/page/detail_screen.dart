import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:water_meter/page/activation_screen.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class DayData {
  final String day;
  final num value;

  DayData({required this.day, required this.value});
}

class _DetailScreenState extends State<DetailScreen> {
  List<DayData> chartData = [
    DayData(day: 'Senin', value: 20),
    DayData(day: 'Selasa', value: 12),
    DayData(day: 'Rabu', value: 11),
    DayData(day: 'Kamis', value: 2),
    DayData(day: 'Jumat', value: 5),
  ];

  List<LineSeries<DayData, dynamic>> _createSeriesData() {
    return [
      LineSeries<DayData, dynamic>(
        dataSource: chartData,
        xValueMapper: (DayData data, _)  => data.day,
        yValueMapper: (DayData data, _) => data.value,
        color: Colors.white,
        markerSettings: const MarkerSettings(
          color:Colors.blue, borderColor: Colors.blue, isVisible: true),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 10, right: 85),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Color.fromRGBO(28, 101, 140, 1),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ActivationScreen()));
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10, right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Detail Device',
                          style: GoogleFonts.poppins(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(28, 101, 140, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1)),
                  )),
              Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(2, 6),
                          blurRadius: 5,
                          color: Color.fromRGBO(28, 101, 140, 1)),
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/WaterMeterPutih.png'),
                        fit: BoxFit.fill),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 20, right: 20),
                      child: Text('ID | Water Meter Punclut',
                          style: GoogleFonts.poppins(
                            fontSize: 19,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 25),
                        ),
                        Text(
                          'GUID ',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' 1234567890',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 21, 21, 1)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 25),
                        ),
                        Text(
                          'Routing Key ',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '/key123',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 21, 21, 1)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Status : ',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Aktif',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromRGBO(28, 101, 140, 1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10, right: 20),
                      child: Text('Waktu Tanggal:',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      ' 10:56:00',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color.fromRGBO(21, 21, 21, 1)),
                    ),
                    Text(
                      ' 10/01/2023',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color.fromRGBO(21, 21, 21, 1)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nilai saat ini :',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '-4.40 kg',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromRGBO(21, 21, 21, 1)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Total nilai : ',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '22.00W',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromRGBO(26, 27, 27, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 10, right: 10, left: 20),
                      child: Text('Rekap Data Harian',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600))),
                  Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(Icons.keyboard_arrow_down)),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: SfCartesianChart(
                  plotAreaBorderWidth: 0,
                  borderWidth: 0,
                  primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(width: 0),
                    title: AxisTitle(
                      text: 'Jam',
                      textStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      )),
                    maximum: 24,
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    minimum: 0,
                  ),
                  primaryXAxis: CategoryAxis(axisLine: const AxisLine(width: 0),
                  title: AxisTitle(
                    text: 'Hari',
                    textStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15),
                  ),
                  series: _createSeriesData(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(8, 101, 140, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.delete_outlined,
                          color: Colors.white,
                          size: 80)
                        ),
                        Text('Delete', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                         color: Colors.black
                        )),
                           Text('Device', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                              fontWeight: FontWeight.w600,
                         color: Colors.black
                        ))
                      ],
                    )
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(8, 101, 140, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.wifi,
                          color: Colors.white,
                          size: 80)
                        ),
                        Text('Reset', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                         color: Colors.black
                        )),
                           Text('Wifi', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                              fontWeight: FontWeight.w600,
                         color: Colors.black
                        ))
                      ],
                    )
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(8, 101, 140, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.history,
                          color: Colors.white,
                          size: 80)
                        ),
                        Text('Set', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                         color: Colors.black
                        )),
                           Text('Delay', 
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                              fontWeight: FontWeight.w600,
                         color: Colors.black
                        ))
                      ],
                    )
                  )
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
