// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/ui/circle/circle_detail_page.dart' as _i1;
import 'package:app/ui/circle/circle_list_page.dart' as _i2;
import 'package:app/ui/home/home_page.dart' as _i3;
import 'package:app/ui/settings/user_settings_page.dart' as _i6;
import 'package:app/ui/signin/signin_page.dart' as _i4;
import 'package:app/ui/signup/signup_page.dart' as _i5;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.CircleDetailPage]
class CircleDetailRoute extends _i7.PageRouteInfo<CircleDetailRouteArgs> {
  CircleDetailRoute({
    _i8.Key? key,
    required String circleId,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         CircleDetailRoute.name,
         args: CircleDetailRouteArgs(key: key, circleId: circleId),
         rawPathParams: {'circleId': circleId},
         initialChildren: children,
       );

  static const String name = 'CircleDetailRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CircleDetailRouteArgs>(
        orElse: () =>
            CircleDetailRouteArgs(circleId: pathParams.getString('circleId')),
      );
      return _i1.CircleDetailPage(key: args.key, circleId: args.circleId);
    },
  );
}

class CircleDetailRouteArgs {
  const CircleDetailRouteArgs({this.key, required this.circleId});

  final _i8.Key? key;

  final String circleId;

  @override
  String toString() {
    return 'CircleDetailRouteArgs{key: $key, circleId: $circleId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CircleDetailRouteArgs) return false;
    return key == other.key && circleId == other.circleId;
  }

  @override
  int get hashCode => key.hashCode ^ circleId.hashCode;
}

/// generated route for
/// [_i2.CircleListPage]
class CircleListRoute extends _i7.PageRouteInfo<void> {
  const CircleListRoute({List<_i7.PageRouteInfo>? children})
    : super(CircleListRoute.name, initialChildren: children);

  static const String name = 'CircleListRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CircleListPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.SigninPage]
class SigninRoute extends _i7.PageRouteInfo<void> {
  const SigninRoute({List<_i7.PageRouteInfo>? children})
    : super(SigninRoute.name, initialChildren: children);

  static const String name = 'SigninRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.SigninPage();
    },
  );
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute({List<_i7.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SignupPage();
    },
  );
}

/// generated route for
/// [_i6.UserSettingsPage]
class UserSettingsRoute extends _i7.PageRouteInfo<void> {
  const UserSettingsRoute({List<_i7.PageRouteInfo>? children})
    : super(UserSettingsRoute.name, initialChildren: children);

  static const String name = 'UserSettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserSettingsPage();
    },
  );
}
