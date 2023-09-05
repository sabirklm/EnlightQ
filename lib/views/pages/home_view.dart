import 'package:enlight_q_app/app.dart';
import 'package:enlight_q_app/models/question.dart';
import 'package:enlight_q_app/views/pages/question_paper_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber,
        onTap: (value) {
          print('[M] $value');
        },
        selectedLabelStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      appBar: AppBar(),
      body: ListView(
        children: [
          ...List.generate(
            10,
            (index) => QuextionPapers(
              papers: [QuestionPaper()],
              onTapPaper: (QuestionPaper paper) {
                EnlightRoute.to(
                  context: context,
                  page: const QuestionPaperPage(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class QuextionPapers extends StatelessWidget {
  final List<QuestionPaper> papers;
  final void Function(QuestionPaper paper) onTapPaper;
  const QuextionPapers(
      {super.key, required this.papers, required this.onTapPaper});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'CAT',
            style: GoogleFonts.nunito(
              fontSize: 16,
              letterSpacing: 2.0,
            ),
          ),
        ),
        SizedBox(
          height: 160,
          width: width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                10,
                (index) => GestureDetector(
                  onTap: () {
                    onTapPaper(papers[index]);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black38,
                    ),
                    width: 120,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://i.cdn.newsbytesapp.com/images/l158_11531537104319.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
