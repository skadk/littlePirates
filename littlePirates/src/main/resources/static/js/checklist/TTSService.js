/**
 * 
 */
 
 class TTSService {
  constructor() {
    this.clientId = "kg4i4g5n07"; // 네이버 개발자 센터에서 발급받은 클라이언트 ID
    this.clientSecret = "lIfHCBdxCxNJfIPnCTlg0Xaif8fOATg5JNJ89dHm"; // 네이버 개발자 센터에서 발급받은 클라이언트 시크릿
    this.apiURL = "https://naveropenapi.apigw.ntruss.com/voice/v1/tts";
  }

  playTTS(text) {
    const speaker = "mijin"; // 음성 합성에 사용할 인물 설정
    const speed = "0"; // 말하기 속도 조절
    const emotion = "0"; // 감정 표현 여부 설정

    const textEncoded = encodeURIComponent(text);
    const apiURLWithParams = `${this.apiURL}?speaker=${speaker}&speed=${speed}&text=${textEncoded}&emotion=${emotion}`;
    const audio = new Audio(apiURLWithParams);
    audio.play();
  }
}