import 'package:flutter/material.dart';
import '../utils/routes.dart';

class driverlist extends StatefulWidget {
  const driverlist({Key? key}) : super(key: key);

  @override
  _driverlistState createState() => _driverlistState();
}

class _driverlistState extends State<driverlist> {
  List<String> driverbikename = [
    'MOTOR-BIKE Honda',
    'MOTOR-BIKE TVS',
    'MOTOR-BIKE Bajaj',
    'MOTOR-BIKE Honda',
    'MOTOR-BIKE Royal'
  ];
  List<String> drivername = [
    'Hari sharma',
    'Ram poudel',
    'Roshan kumar',
    'Rahul yadav',
    'Shyam gupta'
  ];
  // List<int> driverprice = [200, 300, 400, 450, 500];
  List<String> driverImage = [
    'https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
    // 'https://images.unsplash.com/photo-1468818438311-4bab781ab9b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
    // 'https://images.unsplash.com/photo-1600320254374-ce2d293c324e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
    // 'https://images.unsplash.com/photo-1468818438311-4bab781ab9b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
    // 'https://images.unsplash.com/photo-1468818438311-4bab781ab9b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: drivername.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image(
                                height: 100,
                                width: 100,
                                image: NetworkImage(
                                    driverImage[index + 1].toString()),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    driverbikename[index].toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    drivername[index].toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 35,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            color: Colors.black),
                                        child: const Center(
                                            child: Text(
                                          'Decline',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            color: Colors.black),
                                        child: const Center(
                                            child: Text(
                                          'Accept',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),

                                  // ignore: prefer_const_constructors
                                  Align(
                                    alignment: Alignment.centerRight,
                                  )
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }))
      ],
    ));
  }
}
