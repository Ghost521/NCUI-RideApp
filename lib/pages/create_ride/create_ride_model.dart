import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_ride_widget.dart' show CreateRideWidget;
import 'package:flutter/material.dart';

class CreateRideModel extends FlutterFlowModel<CreateRideWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for rideName widget.
  FocusNode? rideNameFocusNode;
  TextEditingController? rideNameTextController;
  String? Function(BuildContext, String?)? rideNameTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for numberRiders widget.
  FocusNode? numberRidersFocusNode;
  TextEditingController? numberRidersTextController;
  String? Function(BuildContext, String?)? numberRidersTextControllerValidator;
  // State field(s) for length widget.
  FocusNode? lengthFocusNode;
  TextEditingController? lengthTextController;
  String? Function(BuildContext, String?)? lengthTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RidesRecord? createdRide;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    rideNameFocusNode?.dispose();
    rideNameTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    numberRidersFocusNode?.dispose();
    numberRidersTextController?.dispose();

    lengthFocusNode?.dispose();
    lengthTextController?.dispose();
  }
}
