import java.io.*;
import java.net.*;

public class Client {
    public static void main(String[] args) throws Exception {
        Socket clnt = new Socket("127.0.0.1", 6000);
        DataInputStream streamIn = new DataInputStream(new BufferedInputStream(clnt.getInputStream()));
        DataOutputStream streamOut = new DataOutputStream(clnt.getOutputStream());
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        while(true){
            String mssg = br.readLine();
            if(mssg.equalsIgnoreCase("stop")) {
                clnt.close();
                break;
            }
            else {
                streamOut.writeUTF(mssg);
            }
        }
    }
}
