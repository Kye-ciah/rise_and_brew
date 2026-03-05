import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void _handleButtonPress(String buttonText) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$buttonText selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  // This method is kept for potential future use
  // If not needed, you can remove it
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Sticky Header
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              height: 58,
              width: double.infinity,
              child: Image.network(
                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/z6d90yjy_expires_30_days.png",
                fit: BoxFit.fill,
              ),
            ),

            // Welcome section with green background
            Container(
              color: const Color(0xFF4C6D5A),
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 4),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    width: 261,
                    child: const Text(
                      "Hi! I'm Victor, your growth companion! 🌱 Let's keep your goals blooming today.",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox( // Fixed: Use SizedBox for fixed dimensions
                    width: 250,
                    height: 250,
                    child: Image.network(
                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/2con6lc8_expires_30_days.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recent Samples Section
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 9, right: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16, left: 14, right: 14),
                            child: Text(
                              "Recent Samples",
                              style: TextStyle(
                                color: Color(0xFF187B4D),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 14, right: 14),
                            child: Column(
                              children: [
                                _buildSampleCard1(),
                                const SizedBox(height: 8),
                                _buildSampleCard2(),
                                const SizedBox(height: 8),
                                _buildSampleCard3(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Recommendations Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Text(
                              "Recommendations",
                              style: TextStyle(
                                color: Color(0xFF187B4D),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                _buildRecommendationCard1(),
                                const SizedBox(height: 8),
                                _buildRecommendationCard2(),
                                const SizedBox(height: 8),
                                _buildRecommendationCard3(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // Bottom Navigation Bar
            _buildBottomNavBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildSampleCard1() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 1),
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Field 3 - North Side",
                                      style: TextStyle(
                                        color: Color(0xFF09090B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Text(
                              "October 20, 2025",
                              style: TextStyle(
                                color: Color(0xFF09090B),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "10:00 AM",
                        style: TextStyle(
                          color: Color(0xFF71717A),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "4.2 % SOM \nNeutral PH level",
                  style: TextStyle(
                    color: Color(0xFF71717A),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          _buildStatusButtons('Good'),
        ],
      ),
    );
  }

  Widget _buildSampleCard2() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 1),
                                margin: const EdgeInsets.only(right: 4),
                                width: double.infinity,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Field 3 - North Side",
                                      style: TextStyle(
                                        color: Color(0xFF09090B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Text(
                              "October 20, 2025",
                              style: TextStyle(
                                color: Color(0xFF09090B),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "10:00 AM",
                        style: TextStyle(
                          color: Color(0xFF71717A),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text( // Fixed: Changed "Aprrox" to "Approx"
                  "Approx. 4.2 % SOM \nNeutral PH level",
                  style: TextStyle(
                    color: Color(0xFF71717A),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          _buildStatusButtons('Bad'),
        ],
      ),
    );
  }

  Widget _buildSampleCard3() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.only(top: 12, bottom: 7, left: 12, right: 12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox( // Fixed: Use SizedBox for fixed width
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 1),
                    margin: const EdgeInsets.only(right: 4),
                    width: double.infinity,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Field 3 - North Side",
                          style: TextStyle(
                            color: Color(0xFF09090B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "October 20, 2025",
                  style: TextStyle(
                    color: Color(0xFF09090B),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard1() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add Organic Compost",
            style: TextStyle(
              color: Color(0xFF09090B),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "What to do : ",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Consider adding 2-3 inches of compost to boost SOM levels in Field 3.",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "View details",
                style: TextStyle(
                  color: Color(0xFF187B4D),
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox( // Fixed: Use SizedBox for fixed dimensions
                width: 18,
                height: 18,
                child: Image.network(
                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/enr38ekp_expires_30_days.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard2() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reduce Tillage",
            style: TextStyle(
              color: Color(0xFF09090B),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "What to do : ",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Minimize tillage in Field 1 to preserve existing Organic Matter.",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "View details",
                style: TextStyle(
                  color: Color(0xFF187B4D),
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox( // Fixed: Use SizedBox for fixed dimensions
                width: 18,
                height: 18,
                child: Image.network(
                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/xm0hcv4z_expires_30_days.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard3() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E7), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Plant Cover Crops",
            style: TextStyle(
              color: Color(0xFF09090B),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "What to do : ",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Planting winter rye can increase soil health during off-seasons!",
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "View details",
                style: TextStyle(
                  color: Color(0xFF187B4D),
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox( // Fixed: Use SizedBox for fixed dimensions
                width: 18,
                height: 18,
                child: Image.network(
                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/nz51u7fe_expires_30_days.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusButtons(String activeButton) {
    return Row(
      children: [
        _buildStatusButton('Good', activeButton == 'Good'),
        const SizedBox(width: 8),
        _buildStatusButton('Bad', activeButton == 'Bad'),
        const SizedBox(width: 8),
        _buildStatusButton('Neutral', activeButton == 'Neutral'),
      ],
    );
  }

  Widget _buildStatusButton(String text, bool isActive) {
    return InkWell(
      onTap: () => _handleButtonPress(text),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9999),
          color: isActive
              ? const Color(0xFF113722)
              : const Color(0xFFF4F4F5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        margin: text != 'Neutral' ? const EdgeInsets.only(right: 8) : null,
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

  Widget _buildBottomNavBar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 33, right: 33),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 3),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFF187B4D),
                    margin: const EdgeInsets.only(bottom: 24),
                    height: 4,
                    width: double.infinity,
                  ),
                  SizedBox( // Fixed: Use SizedBox for fixed dimensions
                    width: 25,
                    height: 25,
                    child: Image.network(
                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/uc3obak0_expires_30_days.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 28),
              margin: const EdgeInsets.only(right: 1),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox( // Fixed: Use SizedBox for fixed dimensions
                    width: 25,
                    height: 25,
                    child: Image.network(
                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/akgtdj7e_expires_30_days.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    child: const Text(
                      "Cam",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 17),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox( // Fixed: Use SizedBox for fixed dimensions
                    width: 42,
                    height: 42,
                    child: Image.network(
                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/0590885c_expires_30_days.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    child: const Text(
                      "Profile",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 28),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox( // Fixed: Use SizedBox for fixed dimensions
                    width: 25,
                    height: 25,
                    child: Image.network(
                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/nm2txqeq_expires_30_days.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      "List",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}