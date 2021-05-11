class TransactionModel {
  String transactionId;
  double amount;
  int receiverId;
  String description;
  bool isDebit;
  String senderName;
  String receiverName;
  TransactionModel(this.transactionId, this.amount, this.receiverId,
      this.description, this.isDebit, this.senderName, this.receiverName);
}
