// ignore_for_file: file_names

class QuizQuestion{
  QuizQuestion(this.soal, this.opsi);

  final String soal;
  final List<String> opsi;

  //pada colom getShuffLedAnswer bebas menamainnya sesuai keinginan
  List<String>getShuffLedAnswer() {
    final shufflist = List.of(opsi);
    shufflist.shuffle();
    return shufflist;
  }
}