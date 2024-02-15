import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class My_Bar_Chart extends StatefulWidget {
  const My_Bar_Chart({super.key});

  @override
  State<My_Bar_Chart> createState() => _My_Bar_ChartState();
}

class _My_Bar_ChartState extends State<My_Bar_Chart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
        top: 20,
      ),
      child: AspectRatio(
        aspectRatio: 1.3,
        child: BarChart(BarChartData(
            titlesData: FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                ),
              ),
            ),
            borderData: FlBorderData(
                border: Border(
              top: BorderSide.none,
              bottom: BorderSide.none,
              left: BorderSide(width: 1),
              right: BorderSide.none,
            )),
            groupsSpace: 10,
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 100,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 200,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 300,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 250,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 400,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 350,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 7, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 600,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 500,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 9, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 550,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 10, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 400,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 11, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 450,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
              BarChartGroupData(x: 12, barRods: [
                BarChartRodData(
                    borderRadius: BorderRadius.all(Radius.zero),
                    toY: 600,
                    fromY: 0,
                    width: 20,
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ]),
            ])),
      ),
    );
  }
}
