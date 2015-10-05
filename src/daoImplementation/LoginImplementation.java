package daoImplementation;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.LoginBean;
import daoInterface.LoginInterface;

public class LoginImplementation implements LoginInterface {
	private JdbcTemplate jdbcTemplate = null;;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int checkLogin(final LoginBean loginBean)
			throws ClassNotFoundException, SQLException {
		int flag = 0;

		@SuppressWarnings("rawtypes")
		List list = jdbcTemplate.query("select * from Registration3",
				new RowMapper<LoginBean>() {

					public LoginBean mapRow(ResultSet rs, int rownumber)
							throws SQLException {
						System.out.println("in login implllll");
						LoginBean loginBean2 = new LoginBean();
						loginBean2.setName(rs.getString(1));
						System.out.println(loginBean2.getName());
						loginBean2.setNumber(rs.getString(2));
						loginBean2.setMailId(rs.getString(5));
					
						return loginBean2;
					}

				});

		@SuppressWarnings("rawtypes")
		Iterator iterator = list.iterator();
		while (iterator.hasNext()) {
			LoginBean loginBean2 = (LoginBean) iterator.next();
			loginBean.setName(loginBean2.getName());
			if (loginBean2.getMailId().equalsIgnoreCase(loginBean.getMailId())
					&& loginBean2.getNumber().equalsIgnoreCase(
							loginBean.getNumber())) {
				flag = 15;
				break;

			}

		}

		return flag;
	}

}
