import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0XFFF6F7FB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Color(0xFF1479FF),
              indicator: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10), // Creates border
                  color: Colors.white),
              tabs: [
                Tab(
                  text: "Ongoing",
                ),
                Tab(
                  text: "History",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
