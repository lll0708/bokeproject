package com.kgc.bokeproject.pojo;

import java.util.Date;
import java.util.List;

public class Users {
    private Integer id;

    private String phone;

    private String password;

    private String nickName;

    private Integer gender;

    private Date birthday;

    private Integer age;

    private Date creatTime;

    private String headPortraint;

    private String profile;

    private Integer userType;

    private Integer status;

    private List<Fans> fans;

    public List<Fans> getFans() {
        return fans;
    }

    public void setFans(List<Fans> fans) {
        this.fans = fans;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    public String getHeadPortraint() {
        return headPortraint;
    }

    public void setHeadPortraint(String headPortraint) {
        this.headPortraint = headPortraint == null ? null : headPortraint.trim();
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile == null ? null : profile.trim();
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}