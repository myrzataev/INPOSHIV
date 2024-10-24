// import 'package:flutter/material.dart';

// class InvoiceScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Счет на оплату', style: TextStyle(color: Colors.green)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Примерное количество товара\nТочное кол-во будет указано после раскроя ткани',
//               style: TextStyle(color: Colors.grey),
//             ),
//             SizedBox(height: 8),
//             buildRowWithValue('500шт'),
//             SizedBox(height: 16),
            
//             Text('Цена за ед. товара', style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 8),
//             buildRowWithTextField('5\$'),
//             SizedBox(height: 16),
            
//             buildTitleWithAmount('Итоговая примерная сумма', '2500\$', '257443 руб'),
//             SizedBox(height: 16),
            
//             Text('Цена за разработку лекал', style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 8),
//             buildRowWithValue('+100\$'),
//             SizedBox(height: 16),
            
//             Text('Образец', style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 8),
//             buildRowWithValue('+50\$'),
//             SizedBox(height: 16),
            
//             Text('Доставка', style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 8),
//             buildRowWithValue('+50\$'),
//             SizedBox(height: 16),
            
//             buildTitleWithAmount('Итоговая примерная сумма\n+ доп. расходы', '2700\$', '257443 руб'),
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to build a row with static value on the right
//   Widget buildRowWithValue(String value) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SizedBox(width: 200, child: Divider(thickness: 1, color: Colors.grey)),
//         Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
//       ],
//     );
//   }

//   // Method to build a row with a TextField for input on the right
//   Widget buildRowWithTextField(String hintText) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SizedBox(width: 200, child: Divider(thickness: 1, color: Colors.grey)),
//         SizedBox(
//           width: 100, // Adjust width for the TextField
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: hintText,
//               isDense: true, // Reduces height of TextField
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Method to build rows with title and amount, including currency
//   Widget buildTitleWithAmount(String title, String amount, String rubAmount) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: TextStyle(color: Colors.grey)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(amount, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             Text(rubAmount, style: TextStyle(color: Colors.grey)),
//           ],
//         ),
//         Divider(thickness: 1, color: Colors.grey),
//       ],
//     );
//   }
// }
