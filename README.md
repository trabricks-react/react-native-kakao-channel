# 카카오톡 채널 for React Native

![platforms](https://img.shields.io/badge/platforms-Android%20%7C%20iOS-brightgreen.svg?style=flat-square&colorB=191A17)
[![npm](https://img.shields.io/npm/v/@actbase/react-native-kakao-channel.svg?style=flat-square)](https://www.npmjs.com/package/@actbase/react-native-kakao-channel)
[![npm](https://img.shields.io/npm/dm/@actbase/react-native-kakao-channel.svg?style=flat-square&colorB=007ec6)](https://www.npmjs.com/package/@actbase/react-native-kakao-channel)

[![github issues](https://img.shields.io/github/issues/trabricks/react-native-kakao-channel.svg?style=flat-square)](https://github.com/trabricks/react-native-kakao-channel/issues)
[![github closed issues](https://img.shields.io/github/issues-closed/trabricks/react-native-kakao-channel.svg?style=flat-square&colorB=44cc11)](https://github.com/trabricks/react-native-kakao-channel/issues?q=is%3Aissue+is%3Aclosed)
[![Issue Stats](https://img.shields.io/issuestats/i/github/trabricks/react-native-kakao-channel.svg?style=flat-square&colorB=44cc11)](http://github.com/trabricks/react-native-kakao-channel/issues)

## Guide Index

- [`카카오톡 채널 추가하기`](#카카오톡-채널-추가하기)
- [`카카오톡 채널 1:1 채팅하기`](#카카오톡-채널-11-채팅하기)

## 기본설정

기본설정 부분은 [KakaoSDK 시작하기(React-Native)](https://github.com/trabricks/react-native-kakaosdk)를 참고해서 설정하시면 됩니다.

dependencies로 되어있어서 같이 설치가 됩니다.

궁금한 사항이 있는경우 카카오톡 오픈채팅 React & React-Native에서 물어보면 많은 분들이 답변해주십니다.

작업하시다가 외주 혹은 작업할 업체가 필요하면 [project@trabricks.io](mailto:project@trabricks.io)로 메일 주시면 친절하게 안내해드립니다.

## Getting started

### Mostly automatic installation (RN >= 0.60)

```
$ npm install @actbase/react-native-kakaosdk @actbase/react-native-kakao-channel --save
$ cd ios && pod install && cd ..
```

### Mostly automatic installation (RN <= 0.59)

```
$ npm install @actbase/react-native-kakaosdk @actbase/react-native-kakao-channel --save
$ react-native link @actbase/react-native-kakaosdk @actbase/react-native-kakao-channel
$ cd ios && pod install && cd ..
```

### `카카오톡 채널 추가하기`

### 카카오톡 채널 추가 기능은 아래와 같이 동작합니다.

- 브라우저로 카카오톡 채널 브릿지 페이지 실행
- 웹페이지에서 카카오톡 채널 추가 카카오톡 커스텀 스킴 실행

```typescript
const plusFreindId: string = "_asdfGH";
KakaoSDK.channel
  .addFriend(plusFriendId)
  .then(res => console.log(res))
  .catch(e => console.log(e));
```

### `카카오톡 채널 1:1 채팅하기`

### 카카오톡 채널 1:1채팅 기능은 아래와 같이 동작합니다.

- 브라우저로 카카오톡 채널 브릿지 페이지 실행
- 웹페이지에서 1:1 채팅 카카오톡 커스텀 스킴 실행

```typescript
KakaoSDK.channel
  .chat(plusFriendId)
  .then(res => console.log(res))
  .catch(e => console.log(e));
```
