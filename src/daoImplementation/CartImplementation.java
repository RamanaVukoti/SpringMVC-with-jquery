package daoImplementation;

import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;

import beans.CratBean;
import daoInterface.CartInterface;

public class CartImplementation implements CartInterface {
private JdbcTemplate jdbcTemplate = null;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		System.out.println("Setter"+jdbcTemplate);
	}
	public CartImplementation(){
		System.out.println("cart imlementation");
	}
/*JdbcTemplate jdbcTemplate=new JdbcTemplate();*/
	public int insertIntoCart(CratBean cartBean) throws ClassNotFoundException,
			SQLException {
		System.out.println("in cart impl"+cartBean.getItem());
		System.out.println(jdbcTemplate);
		
		int i = jdbcTemplate.update("insert into Cart values(?,?,?,?)",
				new Object[] {
				cartBean.getUserName(), cartBean.getItem(),
						cartBean.getNo_of_items(), cartBean.getorder_id()
						});

		System.out.println(i);
		return i;

	}

}
