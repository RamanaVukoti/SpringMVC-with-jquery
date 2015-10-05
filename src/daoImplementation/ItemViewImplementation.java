package daoImplementation;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.ItemBean;
import beans.LoginBean;

import daoInterface.ItemViewInterface;

public class ItemViewImplementation implements ItemViewInterface {
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public ItemBean viewImage(final String imagePath) {
		System.out.println("in item impl");

	ItemBean itemBean = jdbcTemplate.queryForObject("select * from Stock where item=?"
				,new Object[]{imagePath}, new RowMapper<ItemBean>() {

			public ItemBean mapRow(ResultSet rs, int rownumber)
					throws SQLException {
				System.out.println("in implllll");
				ItemBean itemBean = new ItemBean();
				itemBean.setItem(imagePath);
				itemBean.setItemName(rs.getString(2));
				itemBean.setCost(rs.getInt(3));
				itemBean.setAvailbility(rs.getInt(4));

				return itemBean;
			}

		});
		
		return itemBean;

	}
}
