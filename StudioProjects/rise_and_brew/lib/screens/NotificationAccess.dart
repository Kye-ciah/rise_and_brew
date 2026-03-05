import 'package:flutter/material.dart';

class NotificationAccess extends StatefulWidget {
  const NotificationAccess({super.key});

  @override
  State<NotificationAccess> createState() => _NotificationAccessState();
}

class _NotificationAccessState extends State<NotificationAccess> {
  void _handleAllow() {
    // TODO: Implement notification permission request and navigation
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _handleSkip() {
    // TODO: Handle skip (maybe go to home without permission)
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 58,
            color: const Color(0xFF4C6D5A),
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 18),
            child: Center(
              child: Image.asset(
                // Replace with your actual asset path
                'assets/your-logo.png', // Update with your logo asset
                width: 28,
                height: 30,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.notifications, color: Colors.white, size: 28),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    const Text(
                      'Allow Notification Access',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    // Description
                    const Text(
                      'This allows the app to send you notifications, for important events or any comments ... etc.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    // Buttons
                    Column(
                      children: [
                        // Allow button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _handleAllow,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4C6D5A),
                              foregroundColor: Colors.white,
                              minimumSize: const Size(double.infinity, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Allow'),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Skip for now button
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: _handleSkip,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.black87,
                              minimumSize: const Size(double.infinity, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              side: BorderSide(color: Colors.grey.shade300),
                            ),
                            child: const Text('Skip for now'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}