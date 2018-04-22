package com.store.objects;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

public class Product {
    private Integer Id;
    private String name;
    private BigDecimal price;
    private Category category;
    private Set<Purchase> purchases = new HashSet<Purchase>();

    public Product() {
        
    }
    
    public Product(String name, Category category, BigDecimal price) {
        this.name = name;
        this.category = category;
        this.price = price;
        this.price.setScale(2);
    }

    public Integer getId() {
        return Id;
    }
    public void setId(Integer Id) {
        this.Id = Id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
    }
    public Set<Purchase> getPurchases() {
        return purchases;
    }
    public void setPurchases(Set<Purchase> purchases) {
        this.purchases = purchases;
    }
}
