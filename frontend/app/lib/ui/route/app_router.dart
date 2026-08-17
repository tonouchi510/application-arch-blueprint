import 'package:auto_route/auto_route.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/ui/route/app_router.gr.dart';

export 'app_router.gr.dart';

final authGuardProvider = Provider<AuthGuard>((ref) => AuthGuard(ref));

class AuthGuard extends AutoRouteGuard {
  final Ref _ref;
  AuthGuard(this._ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = _ref.read(authControllerProvider) != null;
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.replaceAll([const SigninRoute()]);
    }
  }
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;

  AppRouter(this.authGuard);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      guards: [authGuard],
      initial: true,
      children: [
        AutoRoute(page: CircleListRoute.page, initial: true),
        AutoRoute(page: CircleDetailRoute.page),
      ],
    ),
    AutoRoute(path: '/settings', page: UserSettingsRoute.page, guards: [authGuard]),
    AutoRoute(path: '/signin', page: SigninRoute.page),
    AutoRoute(path: '/signup', page: SignupRoute.page),
  ];
}
