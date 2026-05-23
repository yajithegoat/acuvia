import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState
    extends ConsumerState<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  bool _isLoading = false;
  bool _emailSent = false; // switches UI to success state

  // ── Theme colors (same as LoginScreen) ────────────────────────────────
  static const Color _bgColor = Color(0xFFD6EAF8);
  static const Color _cardColor = Color(0xFFDEEFF8);
  static const Color _primaryColor = Color(0xFF1A7A9B);
  static const Color _accentColor = Color(0xFF1A7A9B);
  static const Color _fieldBorder = Color(0xFFB0C8D8);
  static const Color _hintColor = Color(0xFF8AAABB);

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // ── Handler ──────────────────────────────────────────────────────────────

  Future<void> _handleSendReset() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    // TODO: wire up your actual reset call, e.g.:
    // await ref.read(authStateProvider.notifier).sendPasswordReset(
    //   _emailController.text.trim(),
    // );

    await Future.delayed(const Duration(seconds: 2)); // remove in production
    setState(() {
      _isLoading = false;
      _emailSent = true; // flip to success view
    });
  }

  void _handleBackToLogin() {
    context.go('/login');
  }

  // ── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLogo(),
                const SizedBox(height: 36),
                _emailSent ? _buildSuccessCard() : _buildFormCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ── Logo ─────────────────────────────────────────────────────────────────
  Widget _buildLogo() {
    return Container(
      width: 90,
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 12,
              offset: Offset(0, 4)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset('assets/acuvia_logo.png', fit: BoxFit.contain),
      ),
    );
  }

  // ── Form card (enter email) ───────────────────────────────────────────────
  Widget _buildFormCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 20,
              offset: Offset(0, 6)),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Title ──────────────────────────────────────────────────
            const Text(
              'FORGOT PASSWORD',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.4,
                color: Color(0xFF1A3A4A),
              ),
            ),
            const SizedBox(height: 12),

            // ── Subtitle ───────────────────────────────────────────────
            const Text(
              "Enter your registered email and we'll send you a link to reset your password.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF5A8A9A),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 28),

            // ── Email field ────────────────────────────────────────────
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style:
                  const TextStyle(fontSize: 14, color: Color(0xFF1A3A4A)),
              validator: (v) {
                if (v == null || v.trim().isEmpty) {
                  return 'Email is required';
                }
                final emailRegex =
                    RegExp(r'^[\w.+-]+@[\w-]+\.[a-z]{2,}$');
                if (!emailRegex.hasMatch(v.trim())) {
                  return 'Enter a valid email';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle:
                    const TextStyle(color: _hintColor, fontSize: 14),
                prefixIcon: const Icon(Icons.email_outlined,
                    color: _hintColor, size: 20),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 16, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      const BorderSide(color: _fieldBorder, width: 1.2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                      color: _primaryColor, width: 1.8),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                      color: Colors.redAccent, width: 1.2),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                      color: Colors.redAccent, width: 1.8),
                ),
              ),
            ),
            const SizedBox(height: 28),

            // ── Send button ────────────────────────────────────────────
            SizedBox(
              height: 52,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _handleSendReset,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _primaryColor,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor:
                      _primaryColor.withValues(alpha: 0.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                child: _isLoading
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.5,
                        ),
                      )
                    : const Text(
                        'SEND RESET LINK',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.4,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),

            // ── Back to login ──────────────────────────────────────────
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_ios_rounded,
                    size: 13, color: _accentColor),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: _handleBackToLogin,
                  child: const Text(
                    'Back to Login',
                    style: TextStyle(
                      fontSize: 13,
                      color: _accentColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ── Success card (after email sent) ──────────────────────────────────────
  Widget _buildSuccessCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 20,
              offset: Offset(0, 6)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── Success icon ─────────────────────────────────────────────
          Container(
            width: 72,
            height: 72,
            margin: const EdgeInsets.only(bottom: 24),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFE0F4FB),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.mark_email_read_outlined,
                size: 36, color: _primaryColor),
          ),

          // ── Title ────────────────────────────────────────────────────
          const Text(
            'CHECK YOUR EMAIL',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.4,
              color: Color(0xFF1A3A4A),
            ),
          ),
          const SizedBox(height: 12),

          // ── Message ──────────────────────────────────────────────────
          Text(
            'We sent a password reset link to\n${_emailController.text.trim()}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF5A8A9A),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 32),

          // ── Back to login button ──────────────────────────────────────
          SizedBox(
            height: 52,
            child: ElevatedButton(
              onPressed: _handleBackToLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: _primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
              child: const Text(
                'BACK TO LOGIN',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.4,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // ── Resend link ───────────────────────────────────────────────
          GestureDetector(
            onTap: () => setState(() => _emailSent = false),
            child: const Text(
              "Didn't receive it? Try again",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: _accentColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}