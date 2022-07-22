import 'dart:developer';
import 'dart:io';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';

class SalehProvider extends ChangeNotifier{
    void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }

  }
   Future download2(String url) async {
    try {

if (await Permission.storage.request().isGranted) {
 String path =
                       await AndroidPathProvider.downloadsPath;
                  //String fullPath = tempDir.path + "/boo2.pdf'";
                  String fullPath = "$path/test.docx";
                  print('full path ${fullPath}');
      Response response = await Dio().get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      log(response.headers.toString());
        log(fullPath.toString());
      File file = File(fullPath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
      OpenFile.open(fullPath);}
    } catch (e) {
      print(e);
    }
  }
  
}