import { NativeModules } from "react-native";

const { ANKakaoChannel } = NativeModules;

export const channel = {
  addFriend: id => {
    ANKakaoChannel.addFriend(id);
  },
  chat: id => {
    ANKakaoChannel.chat(id);
  }
};

export default channel;
