class Questions {
  static int count = 0;
  int? counter;
  List<String>? answers;
  String? question;
  int? answerNumber;

  Questions({required this.answers,required this.question,required this.answerNumber}){
    count+=1;
    counter=count;
  }
}
List<List<Questions>> levels = [
  level1,
];
List<Questions> level1 = [
  Questions(
      answers: ['largest railway station', 'highest railway station','longest railway station','None of the above'],
      question: 'Grand Central Terminal, Park Avenue, New York is the world\'s',
      answerNumber: 1),
  Questions(answers: ['Asia',
    'Africa',
    'Europe',
    'Australia',], question: 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', answerNumber: 2),
  Questions(answers: ['Junagarh, Gujarat',
    'Diphu, Assam',
    'Kohima, Nagaland',
    'Gangtok, Sikkim',], question: 'Garampani sanctuary is located at', answerNumber: 2),
  Questions(answers: [
    'Labour Party',
    'Nazi Party',
    'Ku-Klux-Klan',
    'Democratic Party',], question: 'Hitler party which came into power in 1933 is known as', answerNumber: 2),
  Questions(answers: ['1967',
      '1968',
      '1958',
      '1922',], question: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', answerNumber: 1),
  Questions(answers: ['USA',
    'Fiji',
    'India',
    'UK',], question: 'Golf player Vijay Singh belongs to which country?', answerNumber: 2),
  Questions(answers: ['Letter of Credit (L/C)',
   'laissezfaire',
    'inflation',
    'None of the above',], question: 'Guarantee to an exporter that the importer of his goods will pay immediately for the goods ordered by him, is known as', answerNumber: 1),
  Questions(answers: ['1839',
    '1843',
    '1833',
    '1848',], question: 'First Afghan War took place in', answerNumber: 1),
  Questions(answers: [
    'China and Britain',
    'China and France',
    'China and Egypt',
    'China and Greek',], question: 'First China War was fought between', answerNumber: 1),
  Questions(answers: ['26 m x 14 m',
    '28 m x 15 m',
    '27 m x 16 m',
    '28 m x 16 m',], question: 'For the Olympics and World Tournaments, the dimensions of basketball court are', answerNumber: 2),
];