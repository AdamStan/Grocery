package com.store.objects;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

public class Salesman {
    private Integer Id;
    private String name;
    private String surname;
    private BigDecimal salary;
    private Integer bonus;
    private Set<Order> orders = new HashSet<Order>();

    public Salesman() {
        
    }

    public Salesman(String name, String surname, BigDecimal salary, Integer bonus) {
        this.name = name;
        this.surname = surname;
        this.salary = salary;
        this.bonus = bonus;
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
    public String getSurname() {
        return surname;
    }
    public void setSurname(String surname) {
        this.surname = surname;
    }
    public BigDecimal getSalary() {
        return salary;
    }
    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }
    public Integer getBonus() {
        return bonus;
    }
    public void setBonus(Integer bonus) {
        this.bonus = bonus;
    }

    public Set<Order> getOrders() {
        return orders;
    }
    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }
}
