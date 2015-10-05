package daoInterface;

import java.sql.SQLException;

import beans.CratBean;

public interface CartInterface {
	public int insertIntoCart(CratBean cartBean) throws ClassNotFoundException, SQLException;

}
