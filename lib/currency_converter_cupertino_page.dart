import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    return CupertinoPageScaffold(
        backgroundColor: Colors.blueGrey,
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.blueGrey,
            middle: const Text(
              'Currency Converter',
              style: TextStyle(color: CupertinoColors.white),
            )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  onSubmitted: (value) {},
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: "Please enter the amount in USD",
                  prefix: Icon(CupertinoIcons.money_dollar),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoButton(
                  minSize: Size.,
                    color: CupertinoColors.black,
                    onPressed: convert,
                    child: const Text('Convert')),
              )
            ],
          ),
        ));
  }

  void convert() {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }
}
