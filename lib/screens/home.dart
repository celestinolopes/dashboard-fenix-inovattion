import 'package:dashboard/widgets/dashboardCard.dart';
import 'package:dashboard/widgets/recenTransactionCard.dart';
import 'package:dashboard/widgets/salesCard.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:dashboard/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_chartjs/chartjs.models.dart';
import 'package:flutter_web_chartjs/chartjs.wrapper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFC),
      body: RawScrollbar(
        isAlwaysShown: true,
        thumbColor: Colors.blue.withOpacity(0.4),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Sidebar(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Topbar(),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  DashboardCard(
                                    description: "Over last month , \$ 123.451",
                                    icon: Icons.shopping_bag,
                                    title: "Total Sales",
                                    value: "234.493",
                                    color: Colors.blue.withOpacity(0.1),
                                    variation: "+ 20%",
                                    variationColor: Colors.blue,
                                  ),
                                  DashboardCard(
                                    description: "Over last month , \$ 15.340",
                                    icon: Icons.pie_chart,
                                    title: "Total Expense",
                                    value: "134.493",
                                    color: Colors.red.withOpacity(0.1),
                                    variation: "- 20%",
                                    variationColor: Colors.red,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 600,
                                height: 400,
                                child: ChartJS(
                                  id: "my-chartD",
                                  config: ChartConfig(
                                    type: ChartType.bar,
                                    options: ChartOptions(
                                        responsive: true,
                                        legend: ChartLegend(
                                            position: ChartLegendPosition.top)),
                                    data: ChartData(
                                      labels: [
                                        "Jan",
                                        "Fev",
                                        "Marc",
                                        "Abr",
                                        "Mai"
                                      ],
                                      datasets: [
                                        ChartDataset(
                                          data: [1, 4, 10, 14, 23],
                                          label: "Ocorrências",
                                          backgroundColor: Colors.blue,
                                        ),
                                        ChartDataset(
                                          data: [41, 4, 17, 14, 23],
                                          label: "Acticidades",
                                          backgroundColor: Colors.green,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              DataTable(
                                  headingTextStyle: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                  headingRowColor:
                                      MaterialStateColor.resolveWith((states) {
                                    return Colors.blue.withOpacity(0.3);
                                  }),
                                  columns: [
                                    DataColumn(
                                      label: Text("Id"),
                                    ),
                                    DataColumn(
                                      label: Text("Product"),
                                    ),
                                    DataColumn(
                                      label: Text("Customer"),
                                    ),
                                    DataColumn(
                                      label: Text("Price"),
                                    ),
                                    DataColumn(
                                      label: Text("Sales"),
                                    ),
                                    DataColumn(
                                      label: Text("Status"),
                                    )
                                  ],
                                  rows: [
                                    DataRow(
                                      cells: [
                                        DataCell(
                                          Text("1"),
                                        ),
                                        DataCell(
                                          Text("Iphone 5"),
                                        ),
                                        DataCell(
                                          Text("Celestino Lopes"),
                                        ),
                                        DataCell(
                                          Text(
                                            "\$123.44",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "\$543.44",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color:
                                                  Colors.green.withOpacity(0.4),
                                            ),
                                            child: Text(
                                              "Confirmed",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ])
                            ],
                          ),
                          Column(
                            children: [
                              RecentTransactionsCard(),
                              SalesCard(),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
