package cn.edu.nwpu.pojo;

/**
 * Description:
 * Created By xxm
 */
public class SubMarine {
    private Integer id;
    private String category;
    private String type;
    private String name;
    private String operatorcountry;
    private String operatorservice;
    private String yearcommissioned;
    private String yeardecommissioned;
    private String comments;
    private String maxdepth;
    private String damagepoints;
    private String length;
    private String beam;
    private String draft;
    private String height;
    private String displacementstandard;
    private String displacementfull;
    private String crew;

    public SubMarine(Integer id, String category, String type, String name, String operatorcountry, String operatorservice, String yearcommissioned, String yeardecommissioned, String comments, String maxdepth, String damagepoints, String length, String beam, String draft, String height, String displacementstandard, String displacementfull, String crew) {
        this.id = id;
        this.category = category;
        this.type = type;
        this.name = name;
        this.operatorcountry = operatorcountry;
        this.operatorservice = operatorservice;
        this.yearcommissioned = yearcommissioned;
        this.yeardecommissioned = yeardecommissioned;
        this.comments = comments;
        this.maxdepth = maxdepth;
        this.damagepoints = damagepoints;
        this.length = length;
        this.beam = beam;
        this.draft = draft;
        this.height = height;
        this.displacementstandard = displacementstandard;
        this.displacementfull = displacementfull;
        this.crew = crew;
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

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getMaxdepth() {
        return maxdepth;
    }

    public void setMaxdepth(String maxdepth) {
        this.maxdepth = maxdepth;
    }

    public String getDamagepoints() {
        return damagepoints;
    }

    public void setDamagepoints(String damagepoints) {
        this.damagepoints = damagepoints;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getBeam() {
        return beam;
    }

    public void setBeam(String beam) {
        this.beam = beam;
    }

    public String getDraft() {
        return draft;
    }

    public void setDraft(String draft) {
        this.draft = draft;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getDisplacementstandard() {
        return displacementstandard;
    }

    public void setDisplacementstandard(String displacementstandard) {
        this.displacementstandard = displacementstandard;
    }

    public String getDisplacementfull() {
        return displacementfull;
    }

    public void setDisplacementfull(String displacementfull) {
        this.displacementfull = displacementfull;
    }

    public String getCrew() {
        return crew;
    }

    public void setCrew(String crew) {
        this.crew = crew;
    }
}
