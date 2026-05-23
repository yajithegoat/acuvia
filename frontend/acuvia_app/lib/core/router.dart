import 'package:go_router/go_router.dart';
import '../auth/login_screen.dart';
import '../features/home/home_screen.dart';
import '../auth/register_screen.dart';
import '../auth/forgot_password_screen.dart';
import '../features/assessment/start_assessment_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/assessment',
     builder: (context, state) => const StartAssessmentScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
  ],
);