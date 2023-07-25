
class Article {
// Attributes
  String ? _name;
  int ? _refNumber;
  double ? _selling_price;
  int ? _qty_in_stock;
// Constructor
  Article(
    this._name, 
    this._refNumber, 
    this._selling_price, 
    this._qty_in_stock
  );

// Getter and Setter
  String ? get name => this._name;
  set name (String ? value) => this._name = value;

//=========================================

  double ? get selling_price {
    return _selling_price;
  }

  set selling_price (value) {
    this._selling_price = value;
  }
//=========================================

  int ? get qty_in_stock {
    return _qty_in_stock;
  }

  set qty_in_stock (value) {
    this._qty_in_stock = value;
  }
//=========================================

  int ? get refNumber {
    return _refNumber;
  }


// Method
  void display(){
    print('Name : ${this.name}\nReference number : ${this.refNumber}\nSelling price : ${this.selling_price}\nStock quantity : ${this.qty_in_stock}');
  }
}