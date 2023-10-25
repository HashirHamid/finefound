import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<_SplineAreaData>? chartData;

  @override
  void initState() {
    chartData = <_SplineAreaData>[
      _SplineAreaData(2010, 10.53, 3.3),
      _SplineAreaData(2011, 9.5, 5.4),
      _SplineAreaData(2012, 10, 2.65),
      _SplineAreaData(2013, 9.4, 2.62),
      _SplineAreaData(2014, 5.8, 1.99),
      _SplineAreaData(2015, 4.9, 1.44),
      _SplineAreaData(2016, 4.5, 2),
      _SplineAreaData(2017, 3.6, 1.56),
      _SplineAreaData(2018, 3.43, 2.1),
    ];
    super.initState();
  }

  /// Returns the list of chart series
  /// which need to render on the spline area chart.
  List<ChartSeries<_SplineAreaData, double>> _getSplieAreaSeries() {
    return <ChartSeries<_SplineAreaData, double>>[
      SplineAreaSeries<_SplineAreaData, double>(
        dataSource: chartData!,
        color: Color.fromARGB(22, 75, 135, 185),
        borderColor: Color.fromARGB(255, 54, 122, 177),
        borderWidth: 2,
        dataLabelSettings:
            DataLabelSettings(labelAlignment: ChartDataLabelAlignment.top),
        name: 'orders',
        xValueMapper: (_SplineAreaData sales, _) => sales.year,
        yValueMapper: (_SplineAreaData sales, _) => sales.y1,
      ),
      SplineAreaSeries<_SplineAreaData, double>(
        dataSource: chartData!,
        borderColor: Color.fromARGB(255, 0, 163, 19),
        color: Color.fromARGB(18, 30, 255, 0),
        borderWidth: 2,
        name: 'Revenue',
        dataLabelSettings:
            DataLabelSettings(labelAlignment: ChartDataLabelAlignment.top),
        xValueMapper: (_SplineAreaData sales, _) => sales.year,
        yValueMapper: (_SplineAreaData sales, _) => sales.y2,
      )
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Theme.of(context).colorScheme.background),
            // color: Colors.red,
            width: double.infinity,
            // height: 700,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(''),
                            Text(
                              'Today',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 11),
                            ),
                            Text(
                              'Yesterday',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 11),
                            ),
                            Text(
                              'Last 7 Days',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 11),
                            ),
                            Text(
                              'Last 30 Days',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                            Text(
                              '0',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '0',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '0',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '0',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Revenue',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                            Text(
                              '00.00\€',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '00.00\€',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '00.00\€',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '00.00\€',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/icons/manage.png",
                      height: 30,
                      width: 170,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SfCartesianChart(
                    legend: const Legend(
                        isVisible: true,
                        opacity: 0.7,
                        position: LegendPosition.top),
                    plotAreaBorderWidth: 0,
                    primaryXAxis: NumericAxis(
                        interval: 1,
                        majorGridLines: const MajorGridLines(width: 0),
                        edgeLabelPlacement: EdgeLabelPlacement.shift),
                    primaryYAxis: NumericAxis(
                        labelFormat: '{value}',
                        axisLine: const AxisLine(width: 0),
                        majorTickLines: const MajorTickLines(size: 0)),
                    series: _getSplieAreaSeries(),
                    tooltipBehavior: TooltipBehavior(enable: true),
                  )
                ],
              ),
            )));
  }
}

class _SplineAreaData {
  _SplineAreaData(this.year, this.y1, this.y2);
  final double year;
  final double y1;
  final double y2;
}
