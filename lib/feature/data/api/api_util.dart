import 'package:internet_magazine/feature/data/api/model/god/primary_god_products_model.dart';
import 'package:internet_magazine/feature/data/api/service/connection_service.dart';
import 'package:internet_magazine/feature/data/mapper/busket/busket_data_mappert.dart';
import 'package:internet_magazine/feature/data/mapper/busket/save_product.mapper.dart';
import 'package:internet_magazine/feature/data/mapper/god/god_data_mapper.dart';
import 'package:internet_magazine/feature/data/mapper/main/list_gadgets_mapper.dart';
import 'package:internet_magazine/feature/data/mapper/main/list_personal_mapper.dart';
import 'package:internet_magazine/feature/data/mapper/personal/update_password_mapper.dart';
import 'package:internet_magazine/feature/data/mapper/user/user_mapper.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/primary_god_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/personal/primary_update_password_domain.dart';

import '../../domain/model/user_data/primary_user_model_domain.dart';

class ApiUtil {
  final ConnectionService _connectionService;

  ApiUtil(this._connectionService);

  Future<PrimaryUserModelDomain> getData({
    required String email,
    required String password,
  }) async {
    final result =
        await _connectionService.getData(email: email, password: password);
    return UserMapper.fromJson(result);
  }

  Future<PrimaryUserModelDomain> authorization({
    required String email,
    required String password,
    required String name,
  }) async {
    final result = await _connectionService.getAuthorization(
        name: name, password: password, email: email);
    return UserMapper.fromJson(result);
  }

  Future<bool> checkUser(
      {required String email, required String password}) async {
    final result =
        await _connectionService.checkUser(email: email, password: password);
    return result;
  }

  Future<PrimaryGadgetsModelDomain> getGadgets() async {
    final result = await _connectionService.getGadgets();
    return GadgetsModelMapper.fromJson(result);
  }

  Future<PrimaryUpdatePasswordDomain> getUpdate(
      {required String password}) async {
    final result = await _connectionService.getUpdate(password: password);
    return UpdatePasswordMapper.fromJson(result);
  }

  Future<PrimaryProductsModelDomain> getProducts(
      {required List<String> finder}) async {
    final result = await _connectionService.getProducts(finder: finder);
    return ProductsModelMapper.fromJson(result);
  }

  Future<bool> saveProduct({required SaveProductModelDomain product}) async {
    final result = await _connectionService.saveProduct(
        product: SaveProductMapper.toJson(product));
    return result;
  }

  Future<PrimaryBusketModelDomain> getBusketData() async {
    final result = await _connectionService.getBusketData();
    return BusketDataMapper.fromJson(result);
  }

  Future<PrimaryGodProductsModelDomain> getGodData() async {
    final listProduct = await _connectionService.getGodProduct();
    return GodDataMapper.fromJson(listProduct);
  }
}
