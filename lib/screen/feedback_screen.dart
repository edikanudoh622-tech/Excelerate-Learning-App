import 'package:flutter/material.dart';


class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});


  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}


class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController feedbackController =
      TextEditingController();


  int rating = 0;


  @override
  void dispose() {
    feedbackController.dispose();
    super.dispose();
  }


  void submitFeedback() {
    final feedback = feedbackController.text.trim();


    // Validate rating
    if (rating == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a rating first.'),
        ),
      );
      return;
    }


    // Validate feedback
    if (feedback.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your feedback.'),
        ),
      );
      return;
    }


    // Validate minimum length
    if (feedback.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please enter at least 10 characters of feedback.',
          ),
        ),
      );
      return;
    }


    // Successful submission
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Thank you! Your feedback has been submitted.',
        ),
      ),
    );


    feedbackController.clear();


    setState(() {
      rating = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),


      appBar: AppBar(
        backgroundColor: pink,
        foregroundColor: Colors.white,
        title: const Text(
          'Feedback',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),


              decoration: BoxDecoration(
                color: lightPink,
                borderRadius: BorderRadius.circular(18),
              ),


              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.feedback_outlined,
                      color: pink,
                      size: 32,
                    ),
                  ),


                  SizedBox(height: 15),


                  Text(
                    'Share Your Feedback',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172033),
                    ),
                  ),


                  SizedBox(height: 8),


                  Text(
                    'Your feedback helps us improve your '
                    'Excelerate experience.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 30),


            const Text(
              'How would you rate Excelerate?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 15),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,


              children: List.generate(
                5,
                (index) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        rating = index + 1;
                      });
                    },


                    icon: Icon(
                      index < rating
                          ? Icons.star_rounded
                          : Icons.star_border_rounded,
                      size: 40,
                      color: pink,
                    ),
                  );
                },
              ),
            ),


            const SizedBox(height: 25),


            const Text(
              'Your Feedback',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 10),


            TextField(
              controller: feedbackController,
              maxLines: 6,


              decoration: const InputDecoration(
                hintText: 'Tell us what you think...',
                alignLabelWithHint: true,


                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    bottom: 90,
                  ),


                  child: Icon(
                    Icons.edit_outlined,
                    color: pink,
                  ),
                ),
              ),
            ),


            const SizedBox(height: 25),


            SizedBox(
              width: double.infinity,
              height: 55,


              child: ElevatedButton.icon(
                onPressed: submitFeedback,


                icon: const Icon(
                  Icons.send_rounded,
                ),


                label: const Text(
                  'Submit Feedback',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                style: ElevatedButton.styleFrom(
                  backgroundColor: pink,
                  foregroundColor: Colors.white,


                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
