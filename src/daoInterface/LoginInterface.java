package daoInterface;

import java.sql.SQLException;

import beans.LoginBean;

public interface LoginInterface {
	public int checkLogin(LoginBean  loginBean) throws ClassNotFoundException, SQLException;
	

}
