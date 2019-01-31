package pl.coderslab.model;

public class Employee {
    private int id;
    private String firstName;
    private String lastName;
    private String street;
    private String zipCode;
    private String city;
    private String phoneNumber;
    private String note;
    private int costWorkHour;

    public Employee() {
    }

    public Employee(String firstName, String lastName, String street, String zipCode, String city, String phoneNumber, String note, int costWorkHour) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.street = street;
        this.zipCode = zipCode;
        this.city = city;
        this.phoneNumber = phoneNumber;
        this.note = note;
        this.costWorkHour = costWorkHour;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getCostWorkHour() {
        return costWorkHour;
    }

    public void setCostWorkHour(int costWorkHour) {
        this.costWorkHour = costWorkHour;
    }
}