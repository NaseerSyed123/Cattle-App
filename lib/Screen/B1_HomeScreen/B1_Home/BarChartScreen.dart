import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class BarChartScreen extends StatefulWidget {
   // BarChartScreen ({Key? key, required this.title}) : super(key: key);



   // final String title;

  @override
  _BarChartScreenState createState() => _BarChartScreenState();
}

class _BarChartScreenState extends State<BarChartScreen > {
   List<GDPData> _chartData;
   TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

          child:SizedBox(
            height: 130,

            child: SfCartesianChart(


              title: ChartTitle(text: 'Total Milk Gained',

              ),
              legend: Legend(isVisible: false),
              // tooltipBehavior: _tooltipBehavior,

              series: <ChartSeries>[
                BarSeries<GDPData, String>(
                    name: 'GDP',
                    color: Colors.green,

                    dataSource: _chartData,
                    xValueMapper: (GDPData gdp, _) => gdp.continent,
                    yValueMapper: (GDPData gdp, _) => gdp.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true)
              ],
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,

                    numberFormat: NumberFormat.compactCurrency(name: 'Rs: '),
                  title: AxisTitle(text: '')),
            ),
          ),
        );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
       GDPData('', 46000),
       // GDPData('', 2490),
      // GDPData('S America', 2900),
      // GDPData('Europe', 23050),
      // GDPData('N America', 24880),
      // GDPData('Asia', 34390),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}