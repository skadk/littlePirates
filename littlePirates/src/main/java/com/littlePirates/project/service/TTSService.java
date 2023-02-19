/*
package com.littlePirates.project.service;

import java.io.*;
import java.net.*;
import javax.sound.sampled.*;

public class TTSService {
    private final String clientId = "kg4i4g5n07"; // 네이버 개발자 센터에서 발급받은 클라이언트 ID
    private final String clientSecret = "lIfHCBdxCxNJfIPnCTlg0Xaif8fOATg5JNJ89dHm"; // 네이버 개발자 센터에서 발급받은 클라이언트 시크릿
    private final String apiURL = "https://naveropenapi.apigw.ntruss.com/voice/v1/tts";
    
    public void playTTS(String text) {
        try {
            String speaker = "mijin"; // 음성 합성에 사용할 인물 설정
            String speed = "0"; // 말하기 속도 조절
            String emotion = "0"; // 감정 표현 여부 설정

            String textEncoded = URLEncoder.encode(text, "UTF-8");
            String apiURLWithParams = apiURL + "?speaker=" + speaker + "&speed=" + speed + "&text=" + textEncoded + "&emotion=" + emotion;
            URL url = new URL(apiURLWithParams);

            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);

            int responseCode = con.getResponseCode();
            if (responseCode == 200) { // API 호출 성공 시
                try (InputStream is = con.getInputStream()) {
                    AudioInputStream audioStream = AudioSystem.getAudioInputStream(is);
                    AudioFormat format = audioStream.getFormat();
                    DataLine.Info info = new DataLine.Info(Clip.class, format);
                    Clip clip = (Clip)AudioSystem.getLine(info);
                    clip.open(audioStream);
                    clip.start();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            } else { // API 호출 실패 시
                System.out.println("Error response code: " + responseCode);
            }
            con.disconnect();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
*/