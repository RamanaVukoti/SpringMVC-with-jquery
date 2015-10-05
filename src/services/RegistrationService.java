package services;

import java.sql.SQLException;

import beans.RegistrtaionBean;
import daoInterface.RegistrtionInterface;
import daoImplementation.RegistrationImplmentation;

public class RegistrationService 

{
	private RegistrtionInterface registrtionInterface;
	
public void setRegistrtionInterface(RegistrtionInterface registrtionInterface) {
		this.registrtionInterface = registrtionInterface;
	}

public int addmember(RegistrtaionBean registrtaionBean) throws ClassNotFoundException, SQLException
{
//RegistrtionInterface registrtionInterface=new RegistrationImplmentation();
return registrtionInterface.addMember(registrtaionBean);

}
	
	

}
