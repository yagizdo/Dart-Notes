class FeeCalculation {
  int calculateFee(int quota) {
    int defaultFee = 100;
    int defaultQuota = 50;

    if (quota > 50) {
      int overflow = quota - defaultQuota;
      int fee = (overflow * 4) + defaultFee;
      return fee;
    } else {
      return defaultFee;
    }
  }
}
