import { NativeModules } from "react-native";

const { ARNKakaoChannel: channel } = NativeModules;

export const ARNKakaoChannel = {
  addFriend: id => {
    channel.addFriend(id);
  },
  chat: id => {
    channel.chat(id);
  }
};

export default ARNKakaoChannel;
