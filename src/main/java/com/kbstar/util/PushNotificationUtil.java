package com.kbstar.util;


import com.google.auth.oauth2.GoogleCredentials;
import com.google.gson.JsonObject;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

@Component
public class PushNotificationUtil {

    // Modification Field ---------------------------------------
    private static final String PROJECT_ID = "kbstar2023-4ae6c";
    public static final String firebaseConfig = "fcm_admin.json";
    // 바꾸기
    public static final String clientToken ="cE9QJidIQDe1Kd6kZY1NEO:APA91bFAcSFXk_HEz28x_hGZIUHexea75zuHk-88EcespLwo32Gge8i2bf2Qi-T9-y_de1mr4usEyrPtQvRAVZP8XOu2GxWgN-CjT5BEcQlkgOBkkGEpo1yOWJauE5JqL3fDxUWfGU1x";
    public static final String imgUrl = "https://github.com/leejeani/admin/blob/master/src/main/resources/static/img/a.jpg";
    // Modification Field ---------------------------------------

    private static final String BASE_URL = "https://fcm.googleapis.com";
    private static final String FCM_SEND_ENDPOINT = "/v1/projects/" + PROJECT_ID + "/messages:send";
    private static final String MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
    private static final String[] SCOPES = { MESSAGING_SCOPE };
    public static final String MESSAGE_KEY = "message";




    private static HttpURLConnection getConnection() throws IOException {
        // [START use_access_token]
        URL url = new URL(BASE_URL + FCM_SEND_ENDPOINT);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("Authorization", "Bearer " + getAccessToken());
        httpURLConnection.setRequestProperty("Content-Type", "application/json; UTF-8");
        return httpURLConnection;
        // [END use_access_token]
    }

    private static String getAccessToken() throws IOException {
        GoogleCredentials googleCredentials = GoogleCredentials
                .fromStream(new ClassPathResource(firebaseConfig).getInputStream())
                .createScoped(List.of("https://www.googleapis.com/auth/cloud-platform"));

        googleCredentials.refreshIfExpired();
        return googleCredentials.getAccessToken().getTokenValue();
    }

    private static String inputstreamToString(InputStream inputStream) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        Scanner scanner = new Scanner(inputStream);
        while (scanner.hasNext()) {
            stringBuilder.append(scanner.nextLine());
        }
        return stringBuilder.toString();
    }

    public static void sendMessage(JsonObject fcmMessage) throws IOException {
        HttpURLConnection connection = getConnection();
        connection.setDoOutput(true);
        DataOutputStream outputStream = new DataOutputStream(connection.getOutputStream());
        outputStream.writeBytes(fcmMessage.toString());
        outputStream.flush();
        outputStream.close();

        int responseCode = connection.getResponseCode();
        if (responseCode == 200) {
            String response = inputstreamToString(connection.getInputStream());
            System.out.println("Message sent to Firebase for delivery, response:");
            System.out.println(response);
        } else {
            System.out.println("Unable to send message to Firebase:");
            String response = inputstreamToString(connection.getErrorStream());
            System.out.println(response);
        }
    }

    private static JsonObject buildNotificationMessage(String title, String body, String next) {
        JsonObject jNotification = new JsonObject();
        jNotification.addProperty("title", title);
        jNotification.addProperty("body", body);
        jNotification.addProperty("image", imgUrl);


        JsonObject jMessage = new JsonObject();
        jMessage.add("notification", jNotification);


        JsonObject jData = new JsonObject();
        jData.addProperty("key1", next);
        jMessage.add("data", jData);

        /*
            firebase
            1. topic
            2. token
            3. condition -> multiple topic
         */
        //jMessage.addProperty("topic", "news");
        jMessage.addProperty("token",clientToken);

        JsonObject jFcm = new JsonObject();
        jFcm.add(MESSAGE_KEY, jMessage);

        return jFcm;
    }
    public static void sendCommonMessage(String title, String body, String next) throws IOException {
        JsonObject notificationMessage = buildNotificationMessage(title, body, next);
        sendMessage(notificationMessage);
    }

}


//    public void sendCommonMessage(String title, String body, String next, Integer couponNo) throws IOException {
//        JsonObject notificationMessage = buildNotificationMessage(title, body, next+"?couponNo="+couponNo);
//        sendMessage(notificationMessage);
//
//    }