// import 'package:flutter/material.dart';
// class CustomDropdown extends StatelessWidget {
//   final double? width;
//   final double? height;
//   final Decoration? decoration;
//   final String? selectedvalue;
//   final Widget? hint;
//   final  void Function(String?)? onChanged;
//   final List<DropdownMenuItem<String>>? items;
//
//    CustomDropdown({super.key,required this.width,required this.height,required this.decoration,required this.selectedvalue, this.hint, required this.onChanged,required this.items});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//         width: width,
//         height: height,
//         decoration:decoration,//
//         // BoxDecoration(
//         //     borderRadius: BorderRadius.circular(10),
//         //     border: Border.all(width: 1, color: Colors.grey)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: DropdownButton<String>(
//             value:selectedvalue ,
//             underline: Container(),
//             items: items,
//             // .map<DropdownMenuItem<String>>((String value) {
//             //   return DropdownMenuItem<String>(
//             //     value: value,
//             //     child: Text(value),
//             //   );
//             // }).toList(),
//             onChanged: onChanged,
//             hint:hint,
//           ),
//         )
//     );
//
//   }
// }

import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String? hintText;
  final ValueChanged<String?>? onChanged;
  final String? selectedItem;

  CustomDropdown({
    required this.items,
    this.hintText,
    this.onChanged,
    this.selectedItem,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: _selectedItem,
          hint: widget.hintText != null ? Text(widget.hintText!) : null,
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
            if (widget.onChanged != null) {
              widget.onChanged!(newValue);
            }
          },
        ),
      ),
    );
  }
}
