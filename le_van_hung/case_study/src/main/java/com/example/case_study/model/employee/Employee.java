package com.example.case_study.model.employee;

public class Employee {
    private int id;
    private String name;
    private String address;
    private String dateOfBirth;
    private boolean gender;
    private String phone;
    private String email;
    private String citizenId;
    private String account;
    private String password;


    public Employee() {
    }

    public Employee(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public Employee(int id, String name, String address, String dateOfBirth, boolean gender, String phone, String email, String citizenId, String account, String password) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.citizenId = citizenId;
        this.account = account;
        this.password = password;
    }

    public Employee(String name, String address, String dateOfBirth, boolean gender, String phone, String email, String citizenId, String account, String password) {
        this.name = name;
        this.address = address;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.citizenId = citizenId;
        this.account = account;
        this.password = password;
    }

    public Employee(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Employee(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCitizenId() {
        return citizenId;
    }

    public void setCitizenId(String citizenId) {
        this.citizenId = citizenId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

