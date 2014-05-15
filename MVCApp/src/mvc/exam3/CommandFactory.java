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
		if(asdf.equals("REGCONFIRM")) //가입확인창으로
		{
			System.out.println(33);
			//입력값 확인
			//입력값이 잘못되었을 경우 해당 에러페이지로 이동
			iCmd = new RegConfirmCommand();
		}
		
		else if(asdf.equals("REG"))
		{
			iCmd = new RegFormCommand(); //인터페이스를 이용해서 값 받음
		}
		
		else if(asdf.equals("REGCOMPLETE")) //가입 완료창으로
		{		
			//db 연동 데이터 저장
		 
			iCmd = new RegCompleteCommand();
		}
		
		else if(asdf.equals("MAIN")) //메인창으로
		{			
			//if안의 코드들을 객체화시켜서 커맨드패턴으로 만듬->클래스를 하나 만든다(1)
			iCmd = new MainCommand();
			
		}
		else if(asdf.equals("ZIPSEARCH"))
		{
			iCmd = new ZipCommand();
		}
		else
		{
			iCmd = null;//비정상적인 경로로 접속(요청)이 들어왔을경우 예외처리
		}
		return iCmd;
		
	}
	
	

	
	
}
