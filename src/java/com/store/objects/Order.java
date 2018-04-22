package com.store.objects;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

public class Order {
    private Integer Id;
    private Date dateOfOrder;
    private Salesman salesman;
    private Set<Purchase> purchases = new HashSet<Purchase>();

    public Order() {
        
    }

    public Order(Salesman salsman) {
        java.util.Date buff = new java.util.Date();            
        this.dateOfOrder = new Date(buff.getTime());
        this.salesman = salsman;
    }

    public Integer getId() {
        return Id;
    }
    public void setId(Integer Id) {
        this.Id = Id;
    }
    public Date getDateOfOrder() {
        return dateOfOrder;
    }
    public void setDateOfOrder(Date dateOfOrder) {
        this.dateOfOrder = dateOfOrder;
    }
    public Salesman getSalesman() {
        return salesman;
    }
    public void setSalesman(Salesman salsman) {
        this.salesman = salsman;
    }
    public Set<Purchase> getPurchases() {
        return purchases;
    }
    public void setPurchases(Set<Purchase> purchases) {
        this.purchases = purchases;
    } 
}
