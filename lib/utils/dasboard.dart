import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: [
          _buildPieChart(),
          _buildBarChart(),
          _buildLineChart(),
          _buildScatterPlot(),
          _buildPieChart2(),
        ],
      ),
    );
  }

  // Funciones de creación de gráficos con datos de ejemplo

  Widget _buildPieChart() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20), // Ajusta el valor según tus necesidades
    child: Stack(
      children: [
        charts.PieChart(
          _createSamplePieData(),
          animate: true,
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text(
                    'Primaria',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80),
                  child: Text(
                    'Secundaria',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -3,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Grado de registro',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}






  Widget _buildBarChart() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20), // Ajusta el valor según tus necesidades
    child: Stack(
      children: [
        charts.BarChart(
          _createSampleBarData(),
          animate: true,
        ),
        Positioned(
          top: 5,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Alumnos conectados en el mes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildLineChart() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20), // Ajusta el valor según tus necesidades
    child: Stack(
      children: [
        charts.LineChart(
          _createSampleLineData(),
          animate: true,
        ),
        Positioned(
          top: 5,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Alumnos que vieron el abecedario',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildScatterPlot() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20), // Ajusta el valor según tus necesidades
    child: Stack(
      children: [
        charts.ScatterPlotChart(
          _createSampleScatterPlotData(),
          animate: true,
        ),
        Positioned(
          top: 5,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Alumnos que vieron los números',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildPieChart2() {
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 20), // Ajusta el valor según tus necesidades
    child: Stack(
      children: [
        charts.PieChart(
          _createSamplePieData2(),
          animate: true,
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text(
                    'SI',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80),
                  child: Text(
                    'NO',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -3,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Alumnos que terminaron el cuestionario ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  // Funciones para crear datos de ejemplo para diferentes gráficos

  List<charts.Series<GenderData, String>> _createSamplePieData() {
  final data = [
    GenderData('Niños', 20),
    GenderData('Niñas', 55),
  ];

  return [
    charts.Series<GenderData, String>(
      id: 'Género',
      domainFn: (GenderData gender, _) => gender.gender,
      measureFn: (GenderData gender, _) => gender.count,
      data: data,
      labelAccessorFn: (GenderData row, _) => '${row.gender}: ${row.count} (${(100 * row.count / (15 + 10)).toStringAsFixed(1)}%)',
    )
  ];
}

List<charts.Series<GenderData, String>> _createSamplePieData2() {
  final data = [
    GenderData('Niños', 10),
    GenderData('Niñas', 25),
  ];

  return [
    charts.Series<GenderData, String>(
      id: 'Género',
      domainFn: (GenderData gender, _) => gender.gender,
      measureFn: (GenderData gender, _) => gender.count,
      data: data,
      labelAccessorFn: (GenderData row, _) => '${row.gender}: ${row.count} (${(100 * row.count / (15 + 10)).toStringAsFixed(1)}%)',
    )
  ];
}

  List<charts.Series<SalesData, String>> _createSampleBarData() {
  final data = [
    SalesData('Setiembre', 3, year: 0),
    SalesData('Octubre', 55, year: 1),
    SalesData('Noviembre', 10, year: 2),
    SalesData('Diciembre', 0, year: 3),
  ];
  
  return [
    charts.Series<SalesData, String>(
      id: 'Ventas',
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.sales,
      data: data,
    )
  ];
}

  List<charts.Series<SalesData, int>> _createSampleLineData() {
    final data = [
      SalesData.withYear(0, 5),
      SalesData.withYear(1, 15),
      SalesData.withYear(2, 25),
      SalesData.withYear(3, 30),
    ];

    return [
      charts.Series<SalesData, int>(
        id: 'Crecimiento',
        domainFn: (SalesData sales, _) => sales.year,
        measureFn: (SalesData sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  List<charts.Series<LinearSales, int>> _createSampleScatterPlotData() {
    final data = [
      LinearSales(0, 5),
      LinearSales(1, 15),
      LinearSales(2, 25),
      LinearSales(3, 30),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Dispersión',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class GenderData {
  final String gender;
  final int count;

  GenderData(this.gender, this.count);
}

class SalesData {
  final String month;
  final int sales;
  final int year;

  SalesData(this.month, this.sales, {required this.year});

  SalesData.withYear(this.year, this.sales) : month = '', assert(year >= 0);
}


class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
