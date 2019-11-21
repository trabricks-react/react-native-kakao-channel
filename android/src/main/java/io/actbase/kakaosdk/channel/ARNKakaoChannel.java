package io.actbase.kakaosdk.channel;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.kakao.util.exception.KakaoException;
import com.kakao.plusfriend.PlusFriendService;

<<<<<<< HEAD:android/src/main/java/io/actbase/kakaosdk/ANKakaoChannelModule.java
public class ANKakaoChannelModule extends ReactContextBaseJavaModule {

    private ReactApplicationContext reactContext;

    public ANKakaoChannelModule(ReactApplicationContext reactContext) {
=======
public class ARNKakaoChannel extends ReactContextBaseJavaModule {

    private ReactApplicationContext reactContext;

    public ARNKakaoChannel(ReactApplicationContext reactContext) {
>>>>>>> 94e303d89f8777fa7ab15dfd1dbe817fabc6eaba:android/src/main/java/io/actbase/kakaosdk/channel/ARNKakaoChannel.java
        super(reactContext);
        this.reactContext = reactContext;
    }

    @NonNull
    @Override
    public String getName() {
        return "ARNKakaoChannel";
    }

    @ReactMethod
    public void addFriend(final String plusFriendId, final Promise promise) {
        try {
            PlusFriendService.getInstance().addFriend(this.getCurrentActivity(), plusFriendId);
            promise.resolve("SUCCESS");
        } catch (KakaoException e) {
            promise.reject("ANKakaoChannel", e.toString());
        }
    }

    @ReactMethod
    public void chat(final String plusFriendId, final Promise promise){
        try {
            PlusFriendService.getInstance().chat(this.getCurrentActivity(), plusFriendId);
            promise.resolve("SUCCESS");
        } catch (KakaoException e) {
            promise.reject("ANKakaoChannel", e.toString());
        }
    }
}
