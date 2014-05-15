package mvc.exam3;

public class CommandFactory {
	private CommandFactory(){};
	private static CommandFactory p = new CommandFactory();
	public static CommandFactory getFactory(){
		return p;
	}
	
	private ICommand iCmd;
	
	public ICommand createCommand(String asdf)
	{
		if(asdf.equals("REGCONFIRM")) //����Ȯ��â����
		{
			System.out.println(33);
			//�Է°� Ȯ��
			//�Է°��� �߸��Ǿ��� ��� �ش� ������������ �̵�
			iCmd = new RegConfirmCommand();
		}
		
		else if(asdf.equals("REG"))
		{
			iCmd = new RegFormCommand(); //�������̽��� �̿��ؼ� �� ����
		}
		
		else if(asdf.equals("REGCOMPLETE")) //���� �Ϸ�â����
		{		
			//db ���� ������ ����
		 
			iCmd = new RegCompleteCommand();
		}
		
		else if(asdf.equals("MAIN")) //����â����
		{			
			//if���� �ڵ���� ��üȭ���Ѽ� Ŀ�ǵ��������� ����->Ŭ������ �ϳ� �����(1)
			iCmd = new MainCommand();
			
		}
		else if(asdf.equals("ZIPSEARCH"))
		{
			iCmd = new ZipCommand();
		}
		else
		{
			iCmd = null;//���������� ��η� ����(��û)�� ��������� ����ó��
		}
		return iCmd;
		
	}
	
	

	
	
}
