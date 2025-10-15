import java.io.*;
import java.net.*;

public class Clienthttp {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Usage: java Clienthttp <hostname>");
            return;
        }

        String hostname = args[0];
        int port = 80;

        try {
            // Création de la socket
            Socket socket = new Socket(hostname, port);

            // Création des flux d'entrée et de sortie
            OutputStreamWriter osw = new OutputStreamWriter(socket.getOutputStream());
            InputStreamReader isw = new InputStreamReader(socket.getInputStream());

            BufferedWriter bufOut = new BufferedWriter(osw);
            BufferedReader bufIn = new BufferedReader(isw);

            // Requête HTTP GET
            String request = "GET / HTTP/1.0\r\nHost: " + hostname + "\r\n\r\n";
            bufOut.write(request);
            bufOut.flush();

            // Lecture de la réponse
            String line = bufIn.readLine();
            while (line != null) {
                System.out.println(line);
                line = bufIn.readLine();
            }

            // Fermeture des ressources
            bufIn.close();
            bufOut.close();
            socket.close();

        } catch (IOException e) {
            System.err.println("Erreur : " + e.getMessage());
        }
    }
}

