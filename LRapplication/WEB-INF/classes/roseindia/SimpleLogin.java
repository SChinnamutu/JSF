package roseindia;

public class SimpleLogin{
	String loginname;
	String password;

	public SimpleLogin(){}

	public String getLoginname(){
		return loginname;
	}

	public void setLoginname(String loginname){
		this.loginname = loginname;
	}

	public String getPassword(){
		return password;
	}

	public void setPassword(String password){
		this.password = password;
	}

	public String CheckValidUser(){
		if(loginname.equals("admin") && password.equals("admin")){
			System.out.println("chandan");
			return "success";
		}
		else{
			return "fail";
		}
	}
}