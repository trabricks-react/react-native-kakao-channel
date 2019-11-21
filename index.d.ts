declare module "react-native-kakao-channel" {
  interface ARNKakaoChannel {
    addFriend: (id: string) => Promise<"SUCCESS">;
    chat: (id: string) => Promise<"SUCCESS">;
  }

  export default ARNKakaoChannel;
}
