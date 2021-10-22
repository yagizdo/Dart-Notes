class FindLetter {
  void letters(String word, String letter) {
    int flag = 0;

    for (var i = 0; i < word.length; i++) {
      if (word[i].toLowerCase() == letter.toLowerCase()) {
        flag = flag + 1;
      }
    }
    print(flag);
  }
}
