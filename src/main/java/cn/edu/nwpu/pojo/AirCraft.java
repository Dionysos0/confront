package cn.edu.nwpu.pojo;

/**
 * Description:
 * Created By xxm
 */
public class AirCraft {
    private Integer id;
    private String category;
    private String type;
    private String name;
    private String operatorcountry;
    private String operatorservice;
    private String yearcommissioned;
    private String yeardecommissioned;
    private String length;
    private String span;
    private String height;
    private String weightempty;
    private String weightmax;
    private String weightpayload;
    private String crew;
    private String agility;
    private String climbrate;
    private String oodacycle;
    private String totalendurance;
    private String physicalsizecode;
    private String runwaylengthcode;

    public AirCraft(Integer id, String category, String type, String name, String operatorcountry, String operatorservice, String yearcommissioned, String yeardecommissioned, String length, String span, String height, String weightempty, String weightmax, String weightpayload, String crew, String agility, String climbrate, String oodacycle, String totalendurance, String physicalsizecode, String runwaylengthcode) {
        this.id = id;
        this.category = category;
        this.type = type;
        this.name = name;
        this.operatorcountry = operatorcountry;
        this.operatorservice = operatorservice;
        this.yearcommissioned = yearcommissioned;
        this.yeardecommissioned = yeardecommissioned;
        this.length = length;
        this.span = span;
        this.height = height;
        this.weightempty = weightempty;
        this.weightmax = weightmax;
        this.weightpayload = weightpayload;
        this.crew = crew;
        this.agility = agility;
        this.climbrate = climbrate;
        this.oodacycle = oodacycle;
        this.totalendurance = totalendurance;
        this.physicalsizecode = physicalsizecode;
        this.runwaylengthcode = runwaylengthcode;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOperatorcountry() {
        return operatorcountry;
    }

    public void setOperatorcountry(String operatorcountry) {
        this.operatorcountry = operatorcountry;
    }

    public String getOperatorservice() {
        return operatorservice;
    }

    public void setOperatorservice(String operatorservice) {
        this.operatorservice = operatorservice;
    }

    public String getYearcommissioned() {
        return yearcommissioned;
    }

    public void setYearcommissioned(String yearcommissioned) {
        this.yearcommissioned = yearcommissioned;
    }

    public String getYeardecommissioned() {
        return yeardecommissioned;
    }

    public void setYeardecommissioned(String yeardecommissioned) {
        this.yeardecommissioned = yeardecommissioned;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getSpan() {
        return span;
    }

    public void setSpan(String span) {
        this.span = span;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeightempty() {
        return weightempty;
    }

    public void setWeightempty(String weightempty) {
        this.weightempty = weightempty;
    }

    public String getWeightmax() {
        return weightmax;
    }

    public void setWeightmax(String weightmax) {
        this.weightmax = weightmax;
    }

    public String getWeightpayload() {
        return weightpayload;
    }

    public void setWeightpayload(String weightpayload) {
        this.weightpayload = weightpayload;
    }

    public String getCrew() {
        return crew;
    }

    public void setCrew(String crew) {
        this.crew = crew;
    }

    public String getAgility() {
        return agility;
    }

    public void setAgility(String agility) {
        this.agility = agility;
    }

    public String getClimbrate() {
        return climbrate;
    }

    public void setClimbrate(String climbrate) {
        this.climbrate = climbrate;
    }

    public String getOodacycle() {
        return oodacycle;
    }

    public void setOodacycle(String oodacycle) {
        this.oodacycle = oodacycle;
    }

    public String getTotalendurance() {
        return totalendurance;
    }

    public void setTotalendurance(String totalendurance) {
        this.totalendurance = totalendurance;
    }

    public String getPhysicalsizecode() {
        return physicalsizecode;
    }

    public void setPhysicalsizecode(String physicalsizecode) {
        this.physicalsizecode = physicalsizecode;
    }

    public String getRunwaylengthcode() {
        return runwaylengthcode;
    }

    public void setRunwaylengthcode(String runwaylengthcode) {
        this.runwaylengthcode = runwaylengthcode;
    }
}
