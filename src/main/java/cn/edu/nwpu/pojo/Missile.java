package cn.edu.nwpu.pojo;

public class Missile {
    private Integer id;

    private int missileNum;

    private String missileName;

    private String missileModelName;

    private String missileEmission;

    private String missileAccuracy;

    private String missileWarheadType;

    private String missilePrepareTime;

    private String missileAttackArea;

    private String missileAttackSpeed;

    private String missileWarheadWeight;

    private String missileLength;

    @Override
    public String toString() {
        return "Missile{" +
                "id=" + id +
                ", missileName='" + missileName + '\'' +
                '}';
    }

    public Missile(Integer id, String missileName) {
        this.id = id;
        this.missileName = missileName;
    }

    public Missile(Integer id, String missileName, String missileModelName, String missileEmission, String missileAccuracy, String missileWarheadType, String missilePrepareTime, String missileAttackArea, String missileAttackSpeed, String missileWarheadWeight, String missileLength) {
        this.id = id;
        this.missileName = missileName;
        this.missileModelName = missileModelName;
        this.missileEmission = missileEmission;
        this.missileAccuracy = missileAccuracy;
        this.missileWarheadType = missileWarheadType;
        this.missilePrepareTime = missilePrepareTime;
        this.missileAttackArea = missileAttackArea;
        this.missileAttackSpeed = missileAttackSpeed;
        this.missileWarheadWeight = missileWarheadWeight;
        this.missileLength = missileLength;
    }

    public int getMissileNum() {
        return missileNum;
    }

    public void setMissileNum(int missileNum) {
        this.missileNum = missileNum;
    }

    public Missile() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMissileName() {
        return missileName;
    }

    public void setMissileName(String missileName) {
        this.missileName = missileName == null ? null : missileName.trim();
    }

    public String getMissileModelName() {
        return missileModelName;
    }

    public void setMissileModelName(String missileModelName) {
        this.missileModelName = missileModelName == null ? null : missileModelName.trim();
    }

    public String getMissileEmission() {
        return missileEmission;
    }

    public void setMissileEmission(String missileEmission) {
        this.missileEmission = missileEmission == null ? null : missileEmission.trim();
    }

    public String getMissileAccuracy() {
        return missileAccuracy;
    }

    public void setMissileAccuracy(String missileAccuracy) {
        this.missileAccuracy = missileAccuracy == null ? null : missileAccuracy.trim();
    }

    public String getMissileWarheadType() {
        return missileWarheadType;
    }

    public void setMissileWarheadType(String missileWarheadType) {
        this.missileWarheadType = missileWarheadType == null ? null : missileWarheadType.trim();
    }

    public String getMissilePrepareTime() {
        return missilePrepareTime;
    }

    public void setMissilePrepareTime(String missilePrepareTime) {
        this.missilePrepareTime = missilePrepareTime == null ? null : missilePrepareTime.trim();
    }

    public String getMissileAttackArea() {
        return missileAttackArea;
    }

    public void setMissileAttackArea(String missileAttackArea) {
        this.missileAttackArea = missileAttackArea == null ? null : missileAttackArea.trim();
    }

    public String getMissileAttackSpeed() {
        return missileAttackSpeed;
    }

    public void setMissileAttackSpeed(String missileAttackSpeed) {
        this.missileAttackSpeed = missileAttackSpeed == null ? null : missileAttackSpeed.trim();
    }

    public String getMissileWarheadWeight() {
        return missileWarheadWeight;
    }

    public void setMissileWarheadWeight(String missileWarheadWeight) {
        this.missileWarheadWeight = missileWarheadWeight == null ? null : missileWarheadWeight.trim();
    }

    public String getMissileLength() {
        return missileLength;
    }

    public void setMissileLength(String missileLength) {
        this.missileLength = missileLength == null ? null : missileLength.trim();
    }
}