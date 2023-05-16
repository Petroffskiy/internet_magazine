import 'package:internet_magazine/feature/domain/model/god/primary_god_products_model_domain.dart';

abstract class IGodRepositoryDomain {
  Future<PrimaryGodProductsModelDomain> getGodData();
}
