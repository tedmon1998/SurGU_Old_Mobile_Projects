import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
 // Your preferred language. Not required, defaults to system language
    MapKitFactory.setApiKey("6aded2f1-6de0-4adf-b79c-2d2bdfc03351"); // Your generated API key
    super.configureFlutterEngine(flutterEngine);
  }
}