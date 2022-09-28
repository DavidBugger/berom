import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History of Berom'),
        backgroundColor: Colors.red[900],
      ),
      body: SfPdfViewer.asset('pdf/berom.pdf'),


      );
//      Text(
//        'This is the about page. Write your policy information here',
//        style: Theme.of(context).textTheme.headline6,
//
//

  }
}
