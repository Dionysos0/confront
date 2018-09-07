package cn.edu.nwpu.pojo;

public class RuleDefender {
    private Integer id;

    private String ruleValue;

    @Override
    public String toString() {
        return "RuleDefender{" +
                "id=" + id +
                ", value='" + ruleValue + '\'' +
                '}';
    }

    public RuleDefender(Integer id, String ruleValue) {
        this.id = id;
        this.ruleValue = ruleValue;
    }

    public RuleDefender() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRuleValue() {
        return ruleValue;
    }

    public void setRuleValue(String ruleValue) {
        this.ruleValue = ruleValue == null ? null : ruleValue.trim();
    }
}