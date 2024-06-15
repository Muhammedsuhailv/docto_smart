import 'package:flutter/material.dart';
import 'package:machinetest/screens/model.dart';
import 'package:machinetest/screens/register_page.dart';
import 'package:machinetest/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedValue;

  void onChanged(String? newValue) {
    setState(() {
      selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20.0),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search Treatments'),
                      )),
                  CustomButton(data: 'Search',height: 50,width: 100,)

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sort by:"),
                    Container(
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: DropdownButton<String>(
                            underline: Container(),
                            value: selectedValue,
                            items: <String>['Date', 'Name', 'Time']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: onChanged,
                            hint: Text('Date'),
                          ),
                        )),
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 800,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: Card(
                          child: Container(
                        width: 300,
                        height: 175,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index]['title'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  names[index]['subtitle'],
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 15,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      names[index]['date'],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.people,
                                      size: 15,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      names[index]['name'],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Divider(
                                height: 1,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "View Booking Details",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 180,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.green,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ));
                },
                child:CustomButton(data: 'Register Now',height: 50,width: 400,),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
