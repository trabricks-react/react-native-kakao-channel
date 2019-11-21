package io.actbase.kakaosdk.channel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;
import com.facebook.react.bridge.JavaScriptModule;

<<<<<<< HEAD:android/src/main/java/io/actbase/kakaosdk/ANKakaoChannelPackage.java
public class ANKakaoChannelPackage implements ReactPackage {

    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        List<NativeModule> modules = new ArrayList<>();
        modules.add(new ANKakaoChannelModule(reactContext));
        return modules;
=======
public class ARNKakaoChannelPackage implements ReactPackage {

    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        return Arrays.<NativeModule>asList(
                new ARNKakaoChannel(reactContext)
        );
>>>>>>> 94e303d89f8777fa7ab15dfd1dbe817fabc6eaba:android/src/main/java/io/actbase/kakaosdk/channel/ARNKakaoChannelPackage.java
    }

    // Deprecated from RN 0.47
    public List<Class<? extends JavaScriptModule>> createJSModules() {
        return Collections.emptyList();
    }

    @Override
    public List<ViewManager> createViewManagers(ReactApplicationContext reactContext) {
        return Collections.emptyList();
    }

}
