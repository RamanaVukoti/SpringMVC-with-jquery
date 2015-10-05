package daoImplementation;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.ItemBean;
import daoInterface.ViewCart;

public class ViewCartImpl implements ViewCart{
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List viewCart(final String user)
	{
		List list = jdbcTemplate.query("select * from Cart where name=?"
				,new Object[]{user}, new RowMapper<ItemBean>() {

			public ItemBean mapRow(ResultSet rs, int rownumber)
					throws SQLException {
				System.out.println("in implllll");
				ItemBean itemBean = new ItemBean();
				itemBean.setItem(user);
				itemBean.setItemName(rs.getString(2));
				/*itemBean.setCost(rs.getInt(3));*/
				itemBean.setAvailbility(rs.getInt(4));

				return itemBean;
			}

		});
		return list;
	
		
	}

}
