import 'package:get_it/get_it.dart';
import 'package:maple_info_app/data/data_source/remote/basic/basic.api.dart';
import 'package:maple_info_app/data/data_source/remote/ocid/ocid.api.dart';
import 'package:maple_info_app/data/data_source/remote/stat/stat.api.dart';
import 'package:maple_info_app/data/repository_impl/basic/basic_repository_impl.dart';
import 'package:maple_info_app/data/repository_impl/ocid/ocid_repository_impl.dart';
import 'package:maple_info_app/data/repository_impl/stat/stat_repository_impl.dart';
import 'package:maple_info_app/domain/repository/basic/basic_repository.dart';
import 'package:maple_info_app/domain/repository/ocid/ocid_repository.dart';
import 'package:maple_info_app/domain/repository/stat/stat_repository.dart';

import '../client/rest_client.dart';

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
}

void _data() {
  final client = RestClient();
  final dio = client.getDio;

  dio.options.headers['x-nxopen-api-key'] = '';
  dio.options.baseUrl = 'https://open.api.nexon.com';
  locator.registerSingleton<OcidApi>(OcidApi(dio));
  locator.registerSingleton<BasicApi>(BasicApi(dio));
  locator.registerSingleton<StatApi>(StatApi(dio));
}


void _domain() {
  locator.registerSingleton<OcidRepository>(
      OcidRepositoryImpl(locator<OcidApi>()));

  locator.registerSingleton<BasicRepository>(
    BasicRepositoryImpl(locator<BasicApi>()));

  locator.registerSingleton<StatRepository>(
      StatRepositoryImpl(locator<StatApi>()));
}