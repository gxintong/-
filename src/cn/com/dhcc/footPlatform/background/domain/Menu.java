package cn.com.dhcc.footPlatform.background.domain;
/**
 * 
 * @author lihang
 * @date  2016年10月26日 上午9:33:42
 * @description
 */
public class Menu {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column WORK_MENU.MENU_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    private String menuId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column WORK_MENU.PARENT_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    private String parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column WORK_MENU.MENU_NAME
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    private String menuName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column WORK_MENU.URL
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    private String url;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column WORK_MENU.MENU_ID
     *
     * @return the value of WORK_MENU.MENU_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public String getMenuId() {
        return menuId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column WORK_MENU.MENU_ID
     *
     * @param menuId the value for WORK_MENU.MENU_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public void setMenuId(String menuId) {
        this.menuId = menuId == null ? null : menuId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column WORK_MENU.PARENT_ID
     *
     * @return the value of WORK_MENU.PARENT_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column WORK_MENU.PARENT_ID
     *
     * @param parentId the value for WORK_MENU.PARENT_ID
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column WORK_MENU.MENU_NAME
     *
     * @return the value of WORK_MENU.MENU_NAME
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public String getMenuName() {
        return menuName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column WORK_MENU.MENU_NAME
     *
     * @param menuName the value for WORK_MENU.MENU_NAME
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column WORK_MENU.URL
     *
     * @return the value of WORK_MENU.URL
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column WORK_MENU.URL
     *
     * @param url the value for WORK_MENU.URL
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}