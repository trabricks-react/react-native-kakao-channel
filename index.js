import { NativeModules } from "react-native";

const { ANKakaoChannel } = NativeModules;

export const ARNKakaoChannel = {
  addFriend: id => {
    ANKakaoChannel.addFriend(id);
  },
  chat: id => {
    ANKakaoChannel.chat(id);
  }
};

export default ARNKakaoChannel;
