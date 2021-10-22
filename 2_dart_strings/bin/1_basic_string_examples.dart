void main() {
  String str1 = "Hello World";
  print(str1);
  print('*************');
  // TR - Birden çok satırlı ifadeler için
  // EN - For multiline statements

  String str2 = """
  Hello World!
  How are you?""";
  print(str2);
  print('*************');

  // TR - String ifadelerin içerisinde değişken yazmak.
  // EN - Writing variables in string expressions.

  int a = 10;
  int b = 20;

  String str3 = "$a x $b = ${a * b}";
  print(str3);
  print('*************');

  // TR - 2 String ifadenin eşitliğini kontrol etmek
  // EN - Checking equality of 2 string expressions

  String str4 = "Hello";
  String str5 = "Hello";

  if (str4 == str5) {
    print('$str4 is equal to $str5');
  } else
    print('$str4 is not equal to $str5');
}
