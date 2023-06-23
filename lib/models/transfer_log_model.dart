class TransferLogModel {
  final String tn, status, date, currency, email, name;
  final double balance;

  TransferLogModel({
    required this.name,
    required this.email,
    this.tn = '23654893',
    this.date = '5 Oct 2022',
    this.status = 'Completed',
    this.balance = 100.00,
    this.currency = 'AUD'
  });
}

List<TransferLogModel> transferLogModelData = [
  TransferLogModel(
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 150.73
  ),
  TransferLogModel(
    status: 'Pending',
    name: 'markdonald',
    email: 'markdonald@gmail.com',
    balance: 130.33
  ),
  TransferLogModel(
    name: 'robert',
    email: 'robert@gmail.com',
    balance: 180.88
  ),
  TransferLogModel(
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 100.00
  ),
  TransferLogModel(
    status: 'Rejected',
    name: 'markdonald',
    email: 'markdonald@gmail.com',
    balance: 15.73
  ),
  TransferLogModel(
    status: 'Pending',
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 50.73
  ),
  TransferLogModel(
    name: 'robert',
    email: 'robert@gmail.com',
    balance: 270.23
  ),
  TransferLogModel(
    status: 'Rejected',
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 350.73
  ),
  TransferLogModel(
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 150.73
  ),
  TransferLogModel(
    status: 'Pending',
    name: 'markdonald',
    email: 'markdonald@gmail.com',
    balance: 130.33
  ),
  TransferLogModel(
    name: 'robert',
    email: 'robert@gmail.com',
    balance: 180.88
  ),
  TransferLogModel(
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 100.00
  ),
  TransferLogModel(
    status: 'Rejected',
    name: 'markdonald',
    email: 'markdonald@gmail.com',
    balance: 15.73
  ),
  TransferLogModel(
    status: 'Pending',
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 50.73
  ),
  TransferLogModel(
    name: 'robert',
    email: 'robert@gmail.com',
    balance: 270.23
  ),
  TransferLogModel(
    status: 'Rejected',
    name: 'rayenjhon',
    email: 'rayenjhon@gmail.com',
    balance: 350.73
  ),
];