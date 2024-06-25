import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'details_ride_widget.dart' show DetailsRideWidget;
import 'package:flutter/material.dart';

class DetailsRideModel extends FlutterFlowModel<DetailsRideWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _userAttendeeManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userAttendee({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userAttendeeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserAttendeeCache() => _userAttendeeManager.clear();
  void clearUserAttendeeCacheKey(String? uniqueKey) =>
      _userAttendeeManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearUserAttendeeCache();
  }
}
