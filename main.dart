// Objectif : Manipuler les collections de type List.
import 'dart:io';
import 'article.dart';
import 'program.dart';

void main(){
  Article article = new Article("pat", 2589, 248.50, 90);
  article.display();

  List<Article> stock = [article];

  Program program = new Program();

  int choice;
  do {
    print("\nMenu:");
    print("1. Add an article to the stock.");
    print("2. Delete an article knowing its reference.");
    print("3. Edit an article knowing its reference.");
    print("4. Search an article by its reference.");
    print("5. Search an article by its name");
    print("6. Search an article by a given range price.");
    print("7. Display all the article.");
    print("8. Quit");
    print("Make your choice (1 - 8): ");

    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter the article's reference : ");
        int reference = int.parse(stdin.readLineSync()!);
        print("Enter the article's name : ");
        String name = stdin.readLineSync()!;
        print("Enter the article's price : ");
        double price = double.parse(stdin.readLineSync()!);
        print("Enter the quantity in stock : ");
        int qty = int.parse(stdin.readLineSync()!);

        Article article = new Article(name, reference, price, qty);
        program.addArticle(stock, article);
        break;

      case 2:
        print("Enter the article's reference : ");
        int reference = int.parse(stdin.readLineSync()!);
        program.deleteArticle(stock, reference);
        break;

      case 3:
        print("Enter the article's reference :");
        int ref = int.parse(stdin.readLineSync()!);
        program.editArticle(stock, ref);
        break;

      case 4:
        print("Enter the article's reference :");
        int ref = int.parse(stdin.readLineSync()!);
        program.searchArticleByRef(stock, ref);
        break;

      case 5:
        print("Enter the article's name :");
        String name = stdin.readLineSync()!;
        program.searchArticleByName(stock, name);
        break;

      case 6:
        print("Enter the minimum price : ");
        double minPrice = double.parse(stdin.readLineSync()!);
        print("Enter the maximum price : ");
        double maxPrice = double.parse(stdin.readLineSync()!);
        program.searchArticleBySellingPriceRange(stock, minPrice, maxPrice);
        break;

      case 7:
        program.displayAllArticle(stock);
        break;

      case 8:
        print("Thank you for using our App.");
        break;

      default:
        print("Invalid choice. Please, retry.");
    }
  } while (choice != 8);
}
