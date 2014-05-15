package mybean.scope;

/*
elapsedTime					r		long		Ÿ�̸� ���� �� ��� �ð�
restart						w		boolean		Ÿ�̸� ����
elapsedTimeAfterInst		r		long		��ü ���� �� ����ð�
elapsedTimeAfterLastAccess	r		long		������ ���� �� ����ð�
 */

public class SessionBean {
	private long startTime;
	private long instTime;
	private long lastAccessTime;
	
	public SessionBean(){
		startTime = System.currentTimeMillis();
		instTime = startTime;
		lastAccessTime = startTime;
	}
	
	// Ÿ�̸Ӱ� ���� �� ����� �ð��� �˷� ��
	public long getElapsedTime(){
		lastAccessTime = System.currentTimeMillis();
		return (lastAccessTime - startTime)/1000;
	}
	
	// Ÿ�̸Ӹ� ����
	public void setRestart(boolean b){
		startTime = System.currentTimeMillis();
		lastAccessTime = System.currentTimeMillis();
	}
	
	// Ÿ�̸Ӱ� ���۵� �ڿ� ����� �� �ð�
	public long getElapsedTimeAfterInst(){
		lastAccessTime = System.currentTimeMillis();
		return (lastAccessTime - instTime)/1000;
	}
	
	// bean�� property�� ���������� ������ �ڿ� ����� �ð�
	public long getElapsedTimeAfterLastAccess(){
		long current = System.currentTimeMillis();
		long elapsed = (current - lastAccessTime)/1000;
		lastAccessTime = System.currentTimeMillis();
		return elapsed;
	}
}
