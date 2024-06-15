import 'package:flutter/material.dart';
import 'package:machinetest/screens/home_page.dart';
import 'package:machinetest/widgets/custom_button.dart';

import '../widgets/custom_textfield.dart';
import '../widgets/dropdown.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime _selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) { // Check for null before assignment
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  var payment;
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20.0),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
           const SizedBox(height: 10,),
            const Divider(height: 1,),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 340.0),
                child: Text("Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(hintText: 'Enter Your Name'),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 215.0),
                child: Text("Whatsapp Number"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(hintText: 'Enter Your Whatsapp Number'),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 315.0),
                child: Text("Address"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(hintText: 'Enter Your Address'),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Location"),
              ),
              CustomDropdown(
                items: ['Kerala', 'Tamil Nadu', 'Uthar Pradesh', 'Andra Pradesh'],
                hintText: '  Select Your Location',
                onChanged: (value) {
                  print('Selected: $value');
                },
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Branch"),
              ),
              CustomDropdown(
                items: ['Malappuram', 'Palakkadu', 'Idukki', 'Calicut'],
                hintText: '  Select Your Branch',
                onChanged: (value) {
                  print('Selected: $value');
                },
              ),


              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Total Amount"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Discount Amount"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Payment Option"),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(title:Text("Cash",style: TextStyle(fontSize: 14),),value: "Cash", groupValue: payment, onChanged: (value) {
                      setState(() {
                        payment=value;
                      });
                    },),
                  ),
                  Expanded(
                    child: RadioListTile(title:Text("Card",style: TextStyle(fontSize: 14),),value: "Card", groupValue: payment, onChanged: (value) {
                      setState(() {
                        payment=value;
                      });
                    },),
                  ),
                  Expanded(
                    child: RadioListTile(title:Text("UPI",style: TextStyle(fontSize: 14),),value: "UPI", groupValue: payment, onChanged: (value) {
                      setState(() {
                        payment=value;
                      });
                    },),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text("Advance Amount"),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240.0),
                child: Text("Balance Amount"),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240.0),
                child: Text("Treatment Date"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap:
                        () => _selectDate(context),

                      child: const Icon(Icons.calendar_month,color: Colors.green,)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Text("Treatment Time"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 180,
                    child: CustomDropdown(
                      items: const ['01', '02', '03', '04'],
                      hintText: '  Hour',
                      onChanged: (value) {
                        print('Selected: $value');
                      },
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: CustomDropdown(
                      items: ['10', '20', '30', '40'],
                      hintText: '  Minutes',
                      onChanged: (value) {
                        print('Selected: $value');
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: CustomButton(data: 'Save',height: 50,width: 400,)
              ),
          ],),
        ),
      ),
    );
  }
}
