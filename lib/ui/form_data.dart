import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunlahirController = TextEditingController();

  _buatInput(namacontroller, String hint) {
    return TextField(
      controller: namacontroller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _buatInput(_namaController, 'Nama'),
            _buatInput(_nimController, 'NIM'),
            TextFormField(
              controller: _tahunlahirController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              hintText: 'Tahun Lahir',
              labelText: 'Tahun Lahir'
              ),
            ),
           ElevatedButton(
           onPressed: () {
            String nama = _namaController.text;
            String nim = _nimController.text;
            int tahunlahir = int.parse(_tahunlahirController.text);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> TampilData(
                nama: nama,
                nim: nim,
                tahunlahir: tahunlahir)));
           },child: const Text('Simpan'), )
          ],
        ),
      ),
    );
  }
}
