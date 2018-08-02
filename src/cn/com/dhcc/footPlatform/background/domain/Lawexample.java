package cn.com.dhcc.footPlatform.background.domain;

public class Lawexample {
    private Integer eid;

    private String etitile;

    private String lawyerId;

    private String type;

    private String time;
    
    private String name;
    
    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getEtitile() {
        return etitile;
    }

    public void setEtitile(String etitile) {
        this.etitile = etitile == null ? null : etitile.trim();
    }

    public String getLawyerId() {
        return lawyerId;
    }

    public void setLawyerId(String lawyerId) {
        this.lawyerId = lawyerId == null ? null : lawyerId.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}