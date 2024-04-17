import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Cat {

    public static void main(String[] args) {
        String apiKey = "live_WcuiHXVQ0yPjko2d48uHCHB3umgdbYLquYoBjh8oDVDerajD8HM2a1Z1whhb8fnJ";
        String apiUrl = "https://api.thecatapi.com/v1/images/0XYvRd7oD";

        try {
            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("x-api-key", apiKey);

            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            StringBuilder response = new StringBuilder();
            String line;

            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            reader.close();

            System.out.println("Response from Cat API:");
            System.out.println(response.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
