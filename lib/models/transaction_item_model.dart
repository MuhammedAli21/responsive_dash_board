class TransactionItemModel {
  final String title, subTitle, amount;
  final bool isWithdrawable;

  TransactionItemModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.isWithdrawable,
  });
}
