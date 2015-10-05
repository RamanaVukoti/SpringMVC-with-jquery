package services;

import java.sql.SQLException;

import beans.LoginBean;
import daoImplementation.LoginImplementation;
import daoInterface.LoginInterface;

public class LoginService {
	private LoginInterface loginInterface;

	public void setLoginInterface(LoginInterface loginInterface) {
		this.loginInterface = loginInterface;
	}

	public int checkLogin(LoginBean loginBean) throws ClassNotFoundException,
			SQLException

	{
		
		return loginInterface.checkLogin(loginBean);

	}
}
