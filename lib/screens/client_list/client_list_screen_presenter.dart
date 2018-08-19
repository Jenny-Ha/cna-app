import '../../data/rest_ds.dart';
import 'package:flutterapp/models/client.dart';

abstract class ClientListScreenContract {
  void onClientListSuccess(List<Client> clients);
  void onClientListError(String errorTxt);
}

class ClientListScreenPresenter {
  String authToken;
  ClientListScreenContract _view;
  RestDatasource api = new RestDatasource();
  ClientListScreenPresenter(this._view, this.authToken);

  requestClientList() {
    try{
    api.getClients(this.authToken).then((List<Client> clients) {
      print(clients);
      _view.onClientListSuccess(clients);
    }).catchError((handleError) => 
      _view.onClientListError(handleError.message)
    );
    }catch(e){
      print(e.toString());  
    }
  }
}