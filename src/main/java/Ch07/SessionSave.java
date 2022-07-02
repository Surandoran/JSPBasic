package Ch07;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionSave {
	//로그인 처리시 Userdid:session 주소를 저장하기 위한 컬렉션
	//HttpSession : session 객체의 위치를 담는 참조변수를 만드는 클래스
	public Map<String,HttpSession> slist = new HashMap();
	
	
	//로그인 처리시 해당 계정 id:session 객체 주소를 저장하기 위한 함수
	public void AddSession(String id, HttpSession session) { //id는 키값, Session에 대한 정보를 담아옴 -> 외부에 있는 정보를 매개변수로 담아옴
		slist.put(id,session);
		System.out.println("ID : "+id+" Session : "+session);
	}
	
	//총세션정보를 전달하기 위한 함수 
	public Map<String,HttpSession> GetSession() { //현재 접속한 모든 세션에 대한 정보 전달 -> 반복문 처리로 출력!
		return slist;
	}
}
