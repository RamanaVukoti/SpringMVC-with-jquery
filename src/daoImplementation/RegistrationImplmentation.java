 package daoImplementation;

import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;

import beans.RegistrtaionBean;
import daoInterface.RegistrtionInterface;

public class RegistrationImplmentation implements RegistrtionInterface {

	private JdbcTemplate jdbcTemplate = null;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int addMember( RegistrtaionBean registrtaionBean)
			throws ClassNotFoundException, SQLException {
		System.out.println("in add memeber");

		int i = jdbcTemplate.update(
				"insert into Registration3 values(?,?,?,?,?)",
				new Object[] {

				registrtaionBean.getName(), registrtaionBean.getGid(),
						registrtaionBean.getProxy(),
						registrtaionBean.getLocation(),registrtaionBean.getMailId()
						});
		
		System.out.println(i);
		return i;
	}
}