<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Ū�d��</title>
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
                    //�s�uŪ�d�� * ��ܤ������w�A
                    //�o�̤]�i�H��JT��1,T=0 �]���O�dT��1)
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
                    System.out.println("�d��:"
                            + new String(Arrays.copyOfRange
                    (response.getData(), 0, 12)));// �d��
                    System.out.println("�m�W:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),12, 32), 
                                    "Big5").trim());// �m�W
                    System.out.println("�����Ҧr��:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),32, 42))); // �����Ҹ�
                    System.out.println("�X�ͦ~���:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),42, 49))); // �X�ͦ~���
                    System.out.println("�ʧO:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),49, 50)));  // �ʧO
                    System.out.println("�o�d�~���:"
                            + new String(Arrays.copyOfRange
                    (response.getData(),50, 57))); // �o�d�~���

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