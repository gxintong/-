package cn.com.dhcc.footPlatform.background.domain;
  /**
   * 
   * @author semir
   *
   */
public class TranslateTable {

	 private String tab_name;
	 private String col_name;
	 private String item_no;
	 private String item_name;
	 private String up_col_name;
	 private String ret_col;
	@Override
	public String toString() {
		return "TranslateTable [tab_name=" + tab_name + ", col_name="
				+ col_name + ", item_no=" + item_no + ", item_name="
				+ item_name + ", up_col_name=" + up_col_name + ", ret_col="
				+ ret_col + "]";
	}
	public String getTab_name() {
		return tab_name;
	}
	public void setTab_name(String tab_name) {
		this.tab_name = tab_name;
	}
	public String getCol_name() {
		return col_name;
	}
	public void setCol_name(String col_name) {
		this.col_name = col_name;
	}
	public String getItem_no() {
		return item_no;
	}
	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getUp_col_name() {
		return up_col_name;
	}
	public void setUp_col_name(String up_col_name) {
		this.up_col_name = up_col_name;
	}
	public String getRet_col() {
		return ret_col;
	}
	public void setRet_col(String ret_col) {
		this.ret_col = ret_col;
	}
}

