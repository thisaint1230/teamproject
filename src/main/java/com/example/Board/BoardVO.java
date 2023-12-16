package com.example.Board;

import javax.swing.*;
import java.util.Date;

public class BoardVO {
    private int id;
    private String productCondition;
    private String category;
    private String name;
    private int price;
    private String seller;
    private String city;
    private boolean possibleDelivery;
    private Date regdate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSeller() {
        return seller;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public boolean isPossibleDelivery() {
        return possibleDelivery;
    }

    public void setPossibleDelivery(boolean possibleDelivery) {
        this.possibleDelivery = possibleDelivery;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}