import java.io.*;
import java.net.*;

public class Client {
    public static void main(String args[])throws Exception{ 
        Socket clnt = new Socket("127.0.0.1", 6000);
        DataInputStream streamIn = new DataInputStream(new BufferedInputStream(clnt.getInputStream())); 
        DataOutputStream streamOut = new DataOutputStream(clnt.getOutputStream());
        System.out.println(streamIn.readUTF());
        System.out.println(streamIn.readUTF());
        clnt.close();
    }
}