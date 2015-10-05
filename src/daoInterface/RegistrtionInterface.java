package daoInterface;

import java.sql.SQLException;

import beans.RegistrtaionBean;

public interface RegistrtionInterface {
	public int addMember(RegistrtaionBean registrtaionBean) throws ClassNotFoundException, SQLException;
	
}
