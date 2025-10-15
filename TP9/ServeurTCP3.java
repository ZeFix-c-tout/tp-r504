import java.io.*;
import java.net.*;

public class ServeurTCP3 {
	public static void main(String[] args) throws Exception {
		ServerSocket socketserver = new ServerSocket(2016);
		while (true) {
			System.out.println("Serveur en attente");
			Socket socket = socketserver.accept();

			System.out.println("Connexion d'un client");

			DataInputStream dIn = new DataInputStream(socket.getInputStream());
			String msg = dIn.readUTF();  // Lire une seule fois
			System.out.println("Message: " + msg);

			String rev = new StringBuilder(msg).reverse().toString();

			DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
			dOut.writeUTF(rev);

			socket.close();
		}
	}
}

