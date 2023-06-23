class RecipientsModel{
  final String image, name, email;
  final String country;
  final String city;
  final String zipCode;
  final String additionalAddress;
  final String number;
  final String gender;
  final String dob;
  final String relationShip;
  RecipientsModel({
    required this.image,
    required this.name,
    required this.email,
    this.country = 'United States',
    this.city = '',
    this.zipCode = '',
    this.additionalAddress = '',
    this.number = '0198828388',
    this.gender = 'Male',
    this.dob = '22-09-1997',
    this.relationShip = 'Family',
  });
}

List<RecipientsModel> recipientsModelData = [
  RecipientsModel(
      image: 'assets/People/AdersonBhett.jpg',
      name: 'Aderson Bhett',
      email: 'adersonbhett@gmail.com'
  ),
  RecipientsModel(
      image: 'assets/People/BrianRonald.jpg',
      name: 'Brian Ronald',
      email: 'brianronald@gmail.com'
  ),
  RecipientsModel(
      image: 'assets/People/MarkDonald.jpg',
      name: 'Mark Donald',
      email: 'markdonald@gmail.com'
  ),
  RecipientsModel(
      image: 'assets/People/RayenJhon.jpg',
      name: 'Rayen Jhon',
      email: 'rayenjhon@gmail.com'
  ),
  RecipientsModel(
      image: 'assets/People/Robert.jpg',
      name: 'Robert',
      email: 'robert@gmail.com'
  ),
  RecipientsModel(
      image: 'assets/People/Steven D.jpg',
      name: 'Steven D',
      email: 'Stevend@gmail.com'
  ),
];