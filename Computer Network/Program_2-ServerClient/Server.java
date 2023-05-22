import java.io.*;
import java.net.*;

public class Server {
    public static void main(String[] args) throws Exception {
        try {
                ServerSocket serversocket = new ServerSocket(6000);
                Boolean flag = true;
                while(flag) {
                    Socket connectionsocket = serversocket.accept();
                    DataInputStream streamIn = new DataInputStream(new BufferedInputStream(connectionsocket.getInputStream()));
                    DataOutputStream streamOut = new DataOutputStream(connectionsocket.getOutputStream());
                    System.out.println("The client is connected");
                    String line="";
                    while(true) {
                        line = streamIn.readUTF();
                        if(!line.equalsIgnoreCase("stop"))
                            System.out.println(line);
                        else {
                            flag = false;
                            break;
                        }
                    }
                }
        }
        catch(Exception e) {
            System.out.println("The client connection terminates");
        }
    }
}