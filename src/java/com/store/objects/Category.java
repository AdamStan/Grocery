package com.store.objects;

import java.util.HashSet;
import java.util.Set;

public class Category {
    private Integer Id;
    private String name;
    private Set<Product> products = new HashSet<Product>();
    
    public Category(){
        
    }

    public Category(String name) {
        this.name = name;
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
    public Set<Product> getProducts() {
        return products;
    }
    public void setProducts(Set<Product> products) {
        this.products = products;
    }   
}
