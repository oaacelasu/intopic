import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Main router for the Example app
///
/// ! Pay attention to the order of routes.
/// Create:  example/create
/// View:    example/:eid
/// Edit:    example/:eid/edit
/// where :edit means example entity id.
///
/// ! Note about parameters
/// Router keeps parameters in global map. It means that if you create route
/// organization/:id and organization/:id/department/:id. Department id will
///  override organization id. So use :oid and :did instead of :id
/// Also router does not provide option to set regex for parameters.
/// If you put - example/:eid before - example/create for route - example/create
/// will be called route - example/:eid
///
///
final router = GoRouter(
    routes: [],
    observers: [
      routeObserver,
    ],
    redirect: (state) {
      return null;
    },
    debugLogDiagnostics: true);

/// Route observer to use with RouteAware
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();
