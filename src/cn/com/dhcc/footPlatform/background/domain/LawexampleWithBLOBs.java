package cn.com.dhcc.footPlatform.background.domain;

public class LawexampleWithBLOBs extends Lawexample {
    private String caseDes;

    private String process;

    private String result;

    public String getCaseDes() {
        return caseDes;
    }

    public void setCaseDes(String caseDes) {
        this.caseDes = caseDes == null ? null : caseDes.trim();
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process == null ? null : process.trim();
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }
}