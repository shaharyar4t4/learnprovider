
import '../../links/app_linker.dart';

class CountProvider  extends ChangeNotifier{
     
     int _count = 0;

     // setup the getter function
     int get count => _count;


     //setup the setter function 
     void setCount(){
        _count++;
        notifyListeners(); // Notify listeners about the change
     }
}