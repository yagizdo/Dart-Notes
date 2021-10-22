void main() {
  var numbers = <int>[];

  numbers.add(67);
  numbers.add(54);
  numbers.add(66);

  /* TR - Burda try kısmına denenecek kodu catch kısmına da kullanıcıya göstermek istediğimiz hata mesajını yazıyoruz. Burda direk hata olan kodda
  durduğu için altında ki print çalışmaz direk catch kısmına geçer hata yazdırır. */

/* EN - Here we write the code to be tried in the try section and the error message that we want to show to the user in the catch section. Here is the direct error in the code
  Since it stops, the print below does not work, it goes directly to the catch section and prints an error. */

  try {
    numbers[3] = 66;
    print('Process complete');
  } catch (e) {
    print('You have exceeded the size of the list.');
  }
}
