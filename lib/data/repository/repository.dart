import 'dart:io';

import 'package:rjs/data/db_helper/idp_helper.dart';
import 'package:rjs/data/http_helper/ihttpe_helper.dart';
import 'package:rjs/data/prefs_helper/iprefs_helper.dart';

import 'irepository.dart';

class Repository implements IRepository {

  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iprefHelper, this._iDbHelper);


}
