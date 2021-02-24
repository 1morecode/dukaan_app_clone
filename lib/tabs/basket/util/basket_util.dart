import 'package:new1/tabs/basket/model/popup_model.dart';

class BasketUtil {
  static String value = 'All';

  static List<PopupModel> list = [
    PopupModel("1", "All", "000000"),
    PopupModel("2", "Pending", "0000FF"),
    PopupModel("3", "Accepted", "0FF000"),
    PopupModel("3", "Rejected", "0FF000"),
    PopupModel("3", "Shipped", "0FF000"),
    PopupModel("3", "Cancelled", "0FF000"),
    PopupModel("3", "Delivered", "0FF000"),
    PopupModel("3", "Failed", "0FF000"),
  ];
}
