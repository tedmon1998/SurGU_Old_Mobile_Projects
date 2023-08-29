package com.example.study_manager
import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("6aded2f1-6de0-4adf-b79c-2d2bdfc03351")
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
