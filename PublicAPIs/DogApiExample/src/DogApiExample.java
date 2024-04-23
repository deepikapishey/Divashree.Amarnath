import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class DogApiExample {

    public static void main(String[] args) {
        String apiKey = "live_BF28r9M5jvvYcBbhPcIMLQf2K4WT72FqbRlhETWXE25Rn3APftWbBv6nGOcuX4u0";
        String apiUrl = "https://api.thedogapi.com/v1/images/search";

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

            System.out.println("Response from Dog API:");
            System.out.println(response.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
