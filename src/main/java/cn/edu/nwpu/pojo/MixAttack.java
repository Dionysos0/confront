package cn.edu.nwpu.pojo;

public class MixAttack {
    private Integer id;

    private String condition;

    private String result;

    public MixAttack(Integer id, String condition, String result) {
        this.id = id;
        this.condition = condition;
        this.result = result;
    }

    public MixAttack() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition == null ? null : condition.trim();
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }
}