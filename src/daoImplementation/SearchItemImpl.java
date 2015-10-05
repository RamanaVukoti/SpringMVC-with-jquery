package daoImplementation;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



import daoInterface.SearchItemInterface;

public class SearchItemImpl implements SearchItemInterface {
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List searchItem(String item) {
		List list = jdbcTemplate.query(
				"select *from Stock where item_name like '" + item + "%'",
				new RowMapper<String>() {

					@Override
					public String mapRow(ResultSet rs, int numbers)
							throws SQLException {
						// TODO Auto-generated method stub
						/*SuggestionsBean suggestionsBean = new SuggestionsBean();
						suggestionsBean.setItemName(rs.getString(2));*/
						String item=(String)rs.getString(2);
						return item;
					}

				});
		System.out.println("in search impl");
		System.out.println(System.currentTimeMillis());
		return list;
	}
	
	public List showSearchItemImage(String itemImage)
	
	{System.out.println("in search iml 2");
		List list = jdbcTemplate.query(
			"select *from Stock where item_name=?",new Object[]{itemImage},
			new RowMapper<String>() {

				@Override
				public String mapRow(ResultSet rs, int numbers)
						throws SQLException {
					// TODO Auto-generated method stub
					/*SuggestionsBean suggestionsBean = new SuggestionsBean();
					suggestionsBean.setItemName(rs.getString(2));*/
					String itemImage=(String)rs.getString(1);
					System.out.println(itemImage);
					return itemImage;
				}

			});
	System.out.println("in search method 2 impl");
	return list;
	}

}
