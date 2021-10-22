class Students {
  late String name;
  late int studentNo;
  late String classInfo;

  Students(this.name, this.classInfo, this.studentNo);
  /* TR - No lara göre kayıt edip aynı no dan birden fazla olmamasının kontrolü
   Burada öğrenci numaralarına göre kıyaslayıp aynı numara ile başka öğrenci kayıt etmemesini sağlıyoruz.*/

  /* EN - EN - Checking whether there is more than one of the same number by registering according to the numbers
   Here, we compare them according to student numbers and ensure that they do not enroll other students with the same number. */

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
