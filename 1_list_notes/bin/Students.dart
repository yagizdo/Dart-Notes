class Students {
  late String name;
  late int studentNo;
  late String classInfo;

  Students(this.name, this.classInfo, this.studentNo);
  // No lara göre kayıt edip aynı no dan birden fazla olmamasının kontrolü
  // Burada öğrenci numaralarına göre kıyaslayıp aynı numara ile başka öğrenci kayıt etmemesini sağlıyoruz.

  @override
  int get hashCode => this.studentNo;

  @override
  bool operator ==(Object other) {
    if (studentNo == (other as Students).studentNo) {
      return true;
    } else {
      return false;
    }
  }
}
