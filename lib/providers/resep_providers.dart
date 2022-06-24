import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/detail_resep.dart';
import 'package:flutter_application_1/models/detail_resep_models.dart';
import 'package:flutter_application_1/services/resep_services.dart';

class ResepProvider extends ChangeNotifier {
  ResepProvider() {
    showListResep();
  }

  final ResepService resepService = ResepService();
  ResepModel resepModel = ResepModel();
  DetailResepModel detailResepModel = DetailResepModel();

  // Show List Resep Data
  showListResep() async {
    resepModel = await resepService.getResep();
    notifyListeners();
  }

  // Show Detail Resep Data
  showDetailResep(String? id) async {
    detailResepModel = await resepService.getDetailResep(key: id);
    notifyListeners();
  }
}

class ResepDetailProvider with ChangeNotifier {
  // String? id;
  // void setId(String? id2){
  //   id = id2;
  //   // print(id2);
  // }

  // String? get _getId {
  //   return id;
  // }
  // ResepDetailProvider({this.id});

  final ResepService resepService = ResepService();
  DetailResepModel detailResepModel = DetailResepModel();

  showDetailResep(String? id) async {
    // detailResepModel = await resepservice.getDetailResep(key: id);
    print('id $id');
    notifyListeners();
  }
}