<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
public class Demo {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(getCode(4));//�I�sgetCode()��k�C�L�@�ӥ|��ƪ��H�����ҽX���G
	}
	/*
	 * �w�q�@������H�����ҽX����k�GgetCode();
	 */
	public static String getCode(int n) {
		String string = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";//�x�s�Ʀr0-9 �M �j�p�g�r��
		char[] ch = new char[n]; //�ŧi�@�Ӧr���}�C����ch �x�s ���ҽX
		for (int i = 0; i < n; i++) {
			Random random = new Random();//�إߤ@�ӷs���H���ƥͦ���
			int index = random.nextInt(string.length());//��^[0,string.length)�d��int��    �@�ΡG�x�s�U��
			ch[i] = string.charAt(index);//charAt() : ��^���w���޳B�� char ��   ==�n�x�s��r���}�C����ch�̭�
		}
		//�Nchar�}�C���O�ഫ��String���O�x�s��result
		//String result = new String(ch);//��k�@�G�����ϥκc�y��k      String(char[] value) �G���t�@�ӷs�� String�A�Ϩ��ܦr���}�C�޼Ƥ���e�]�t���r���ǦC�C
		String result = String.valueOf(ch);//��k�G�G String��k   valueOf(char c) �G��^ char �޼ƪ��r���ܧΦ��C
		return result;
	}
	
}
</body>
</html>