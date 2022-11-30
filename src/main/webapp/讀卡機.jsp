<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>讀卡機</title>
</head>
<body>
package readhealthcardbasicdata;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.smartcardio.Card;
import javax.smartcardio.CardException;
import javax.smartcardio.CommandAPDU;
import javax.smartcardio.ResponseAPDU;
import javax.smartcardio.TerminalFactory;
import javax.smartcardio.CardTerminal;
import javax.smartcardio.CardChannel;

public class ReadData {

    //Define APDU
    public static byte[] SelectAPDU = new byte[]{(byte) 0x00,
        (byte) 0xA4, (byte) 0x04, (byte) 0x00, (byte) 0x10,
        (byte) 0xD1, (byte) 0x58, (byte) 0x00, (byte) 0x00,
        (byte) 0x01, (byte) 0x00, (byte) 0x00, (byte) 0x00,
        (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0x00,
        (byte) 0x00, (byte) 0x00, (byte) 0x11, (byte) 0x00};
    public static byte[] ReadProfileAPDU = 
            new byte[]{(byte) 0x00, (byte) 0xca, (byte) 0x11, 
            (byte) 0x00,(byte) 0x02, (byte) 0x00, (byte) 0x00};

    public static void main(String args[]) {
        TerminalFactory terminalFactory
                = TerminalFactory.getDefault();

        try {
            //Get CardTermial List
            for (CardTerminal terminal : 
                    terminalFactory.terminals().list()) {
                try {
                    //連線讀卡機 * 表示不限制協定，
                    //這裡也可以輸入T＝1,T=0 （健保卡T＝1)
                    Card card = terminal.connect("T=1");
                    CardChannel channel = 
                            card.getBasicChannel();
                    //APDU Command
                    CommandAPDU command = 
                            new CommandAPDU(SelectAPDU);
                    //APDU Response
                    ResponseAPDU response = 
                            channel.transmit(command);
                    //APDU Command
                    command = 
                            new CommandAPDU(ReadProfileAPDU);
                    //APDU Response
                    response = channel.transmit(command);
                    byte[] a = response.getData();
                    //Display Data
                    System.out.println("卡號:"
                            + new String(Arrays.copyOfRange
                    (response.getData(), 0, 12)));// 卡號
                    System.out.println("姓名:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),12, 32), 
                                    "Big5").trim());// 姓名
                    System.out.println("身份證字號:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),32, 42))); // 身分證號
                    System.out.println("出生年月日:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),42, 49))); // 出生年月日
                    System.out.println("性別:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),49, 50)));  // 性別
                    System.out.println("發卡年月日:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),50, 57))); // 發卡年月日

                } 
                catch (javax.smartcardio.CardNotPresentException e) 
                {
                    continue;
                } catch (CardException e) {
                    continue;
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
        } catch (CardException e3) {
            e3.printStackTrace();
        }
    }
}
</body>
</html>