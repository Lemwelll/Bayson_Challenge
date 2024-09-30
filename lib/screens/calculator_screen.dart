import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WageCalculatorScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final hourlyRate = useState(20.0);
    final hoursWorked = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Wage Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hourly Rate: \$${hourlyRate.value.toStringAsFixed(2)}'),
            Slider(
              value: hourlyRate.value,
              min: 10,
              max: 100,
              divisions: 8,
              label: hourlyRate.value.toStringAsFixed(2),
              onChanged: (value) {
                hourlyRate.value = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Hours Worked'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                hoursWorked.value = int.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final totalWage = hourlyRate.value * hoursWorked.value;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'Total Wage: \$${totalWage.toStringAsFixed(2)}')),
                );
              },
              child: Text('Calculate Wage'),
            ),
          ],
        ),
      ),
    );
  }
}
