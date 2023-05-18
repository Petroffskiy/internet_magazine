import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/request/god/create_product_body.dart';
import 'package:internet_magazine/feature/data/api/request/god/parameter_request_model.dart';
import 'package:internet_magazine/feature/domain/model/god/create/data_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/create/primary_god_create_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';
import "dart:developer" as dev;

part 'god_product_event.dart';
part 'god_product_state.dart';

class GodProductBloc extends Bloc<GodProductEvent, GodProductState> {
  final IGodRepositoryDomain _iGodRepositoryDomain;
  GodProductBloc(this._iGodRepositoryDomain) : super(GodProductInitial()) {
    on<GetGadget>(
      (event, emit) async {
        emit(GodProductLoading());
        final PrimaryGodGadgetsModelDomain listGadgets =
            await _iGodRepositoryDomain.getGadget();

        listGadgets.maybeWhen(
          success: (success) async {
            final List<GadgetsModelDomain> listGadget = success;
            emit(GodProductDownload(listGadget: listGadget));
          },
          error: (error) {
            emit(GodProductError(
              message: "${error.message} код: ${error.code}",
            ));
          },
          orElse: () {
            emit(const GodProductError(
              message: "$errorMessageBloc код: $errorBloc",
            ));
          },
        );
      },
    );
    on<CreateProduct>(
      (event, emit) async {
        String base64Image = await imageToBase64(event.image);
        final List<ParameterRequestModel> parameters = List.generate(
            event.parameters.length,
            (index) => ParameterRequestModel(
                  description: event.parameters[index].value,
                  id: index,
                  parameter: event.parameters[index].key,
                ));
        final CreateProductBody product = CreateProductBody(
          category: event.category,
          cout: int.parse(event.count),
          name: event.name,
          image: base64Image,
          price: int.parse(event.price),
          parameters: parameters,
        );
        final PrimaryGodCreateModelDomain response =
            await _iGodRepositoryDomain.createProduct(product: product);
        dev.log(name: "god bloc", "is tapperd");
        response.maybeWhen(
          success: (success) {
          
            emit(GodProductCreate());
          },
          orElse: () {},
        );
      },
    );
  }
}

Future<String> imageToBase64(String imagePath) async {
  File imageFile = File(imagePath);
  List<int> imageBytes = await imageFile.readAsBytes();
  String base64Image = base64Encode(imageBytes);
  return base64Image;
}
