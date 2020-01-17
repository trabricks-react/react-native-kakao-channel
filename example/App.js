/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from "react";
import {
  Platform,
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  ActivityIndicator
} from "react-native";

import KakaoSDK from "@actbase/react-native-kakaosdk";

export default function App() {
  const addFriend = id => {
    KakaoSDK.channel.addFriend(id);
  };

  const chat = id => {
    KakaoSDK.channel.chat(id);
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity
        onPress={() => addFriend("_asdfgh")}
        style={styles.button}
      >
        <Text>AddFriend</Text>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => chat("_asdfgh")} style={styles.button}>
        <Text>Logout</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#F5FCFF"
  },
  button: {
    borderColor: "#000",
    borderWidth: 1,
    padding: 10,
    width: 200,
    margin: 10
  }
});
