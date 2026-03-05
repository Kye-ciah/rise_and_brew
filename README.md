Used for primary actions like "Allow", "Sign Up", and "Login"

___________________________________
Primary Action Buttons
ElevatedButton
Used for primary actions like "Allow", "Sign Up", and "Login"

Example from GalleryAccess, CameraAccess, WifiAccess, NotificationAccess : 

ElevatedButton(
  onPressed: _handleAllow,
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF4C6D5A),  // Green theme color
    foregroundColor: Colors.white,
    minimumSize: const Size(double.infinity, 36),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  child: const Text('Allow'),
)
_______________________________
Secondary Action Buttons
OutlinedButton
Used for secondary actions like "Skip for now"

// Example from permission screens
OutlinedButton(
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
)


______________________

Custom Styled Buttons
InkWell with Container
Used for custom-designed buttons with specific styling requirements

Google Sign-In Button

InkWell(
  onTap: () {
    debugPrint('Google sign up pressed');
  },
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFFE6E6E6),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xFFFFFFFF),
      boxShadow: const [
        BoxShadow(
          color: Color(0x0D1A1A1A),
          blurRadius: 2,
          offset: Offset(0, 1),
        ),
      ],
    ),
    padding: const EdgeInsets.symmetric(vertical: 8),
    margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google icon
        Container(
          width: 16,
          height: 16,
          child: Image.network("google_icon_url"),
        ),
        const Text("Sign up with Google"),
      ],
    ),
  ),
)
______________________
Status/Tag Buttons
Dynamic Status Buttons
Used in HomePage for showing status tags (Good, Bad, Neutral)


Widget _buildStatusButton(String text, bool isActive) {
  return InkWell(
    onTap: () => _handleButtonPress(text),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),  // Fully rounded
        color: isActive
            ? const Color(0xFF113722)      // Active: Dark green
            : const Color(0xFFF4F4F5),     // Inactive: Light gray
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : const Color(0xFF18181B),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

________________________________
GestureDetector for Clickable Text
Used for text links like "Don't have an account? Sign up"

GestureDetector(
  onTap: () {
    Navigator.pushReplacementNamed(context, '/login');
  },
  child: const Text(
    "Have an account? Login",
    style: TextStyle(
      color: Color(0xFF09090B),
      fontSize: 14,
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF09090B),
    ),
  ),
)
_________________________________________

IconButton(
  icon: const Icon(Icons.arrow_back, color: Colors.white),
  onPressed: () {
    Navigator.pushReplacementNamed(context, '/login');
  },
)
_____________________________________________
// Replace current route
Navigator.pushReplacementNamed(context, '/home');

// Push new route
Navigator.pushNamed(context, '/signup');

// Pop current route
Navigator.pop(context);
____________________________________________


COMMON BUTTON PROPERTIZE

SIZING : minimumSize: const Size(double.infinity, 36)  // Full width, 36px height

BORDER RADIUS : borderRadius: BorderRadius.circular(8)     // Standard buttons
borderRadius: BorderRadius.circular(12)    // Cards
borderRadius: BorderRadius.circular(9999)  // Pills/Tags

SHADOW : boxShadow: const [
  BoxShadow(
    color: Color(0x0D1A1A1A),  // 5% opacity black
    blurRadius: 2,
    offset: Offset(0, 1),
  ),
]


COMMON HANDLER PATTERN : 

void _handleAllow() {
  // Permission logic
  Navigator.pushReplacementNamed(context, '/home');
}

void _handleSkip() {
  // Skip logic
  Navigator.pushReplacementNamed(context, '/home');
}

void _handleButtonPress(String buttonText) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('$buttonText selected'),
      duration: const Duration(seconds: 1),
    ),
  );
}


