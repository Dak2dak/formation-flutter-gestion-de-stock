import 'dart:io';
import 'article.dart';

class Program {
  //===================== Methods ========================
  
  
  Article ? searchArticleByRef(List<Article> stock, int refNumber) {
    for(int i = 0; i < stock.length; i++)
      if(stock[i].refNumber == refNumber)
        return stock[i];
    return null;
  }

//=======================================================
  void addArticle(List<Article> stock, Article article) {
    stock.add(article);
  }

//=====================================================
  Article ? deleteArticle(List<Article> stock, int refNumber) {
    late Article article;
    for(int i = 0; i < stock.length; i++)
      if(stock[i].refNumber == refNumber)
        article = stock.removeAt(i);
    return article;
  }

//===============================================================
  void editArticle(List<Article> stock, int refNumber) {

    stdout.write("Enter the article's new price : ");
    double newPrice = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the article's new name : ");
    String newName = stdin.readLineSync() as String;
    stdout.write("Enter the article's new quantity in stock : ");
    int newQty = int.parse(stdin.readLineSync()!);

    for(int i = 0; i < stock.length; i++){
      if(stock[i].refNumber == refNumber){
        stock[i].qty_in_stock = newQty;
        stock[i].selling_price = newPrice;
        stock[i].name = newName;
      }
    }
  }

//========================================================
  Article ? searchArticleByName(List<Article> stock, String name) {

    late Article article;

    for(int i = 0; i < stock.length; i++)
      if(stock[i].name == name)
        article = stock[i];

    return article;
  }

//=========================================================================================
  List<Article> ? searchArticleBySellingPriceRange(List<Article> stock, double minPrice, double maxPrice) {

    List<Article> listOfArticles = [];

    for(int i = 0; i < stock.length; i++){
      if(stock[i].selling_price! >= minPrice && stock[i].selling_price! <= maxPrice){
        print("Articles trouvés dans l'intervalle de prix : ");
        listOfArticles.add(stock[i]);
      }
    }

    return listOfArticles;
  }

//=========================================
  void displayAllArticle(List<Article> stock) {
    for(int i = 0; i < stock.length; i++){
      stock[i].display();
    }
  }

}






