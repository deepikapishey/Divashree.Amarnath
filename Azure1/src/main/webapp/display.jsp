<%@ page import="java.io.BufferedReader,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL" %>
<%@ page import="java.io.IOException" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>Display URL Contents</title>
</head>
<body>
    <h1>Contents of the Blob Storage:</h1>
    <%
        try {
            // URL to read
            URL url = new URL("https://deepikapishey.blob.core.windows.net/examplecontainer/abc.txt?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2024-06-28T17:07:09Z&st=2024-06-04T09:07:09Z&spr=https&sig=Ci1ECc848FHhrv6a1vb3oHlOmxzC1ezNFFVQifupdv8%3D");

            // Open a connection to the URL
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Set request method to GET
            connection.setRequestMethod("GET");

            // Get the input stream from the connection
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

            // Read the response line by line
            String line;
            while ((line = reader.readLine()) != null) {
                out.println(line + "<br>");
            }

            // Close the reader and connection
            reader.close();
            connection.disconnect();
        } catch (IOException e) {
            out.println("An error occurred: " + e.getMessage());
        }
    %>
</body>
</html>
