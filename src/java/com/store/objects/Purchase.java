package com.store.objects;

public class Purchase {
    private Integer Id;
    private Product product;
    private Double amount;
    private Order order;
    
    public Purchase() {
        
    }
    
    public Purchase(Product product) {
        this.product = product;
    }
    
    public Purchase(Product product, Double amount, Order order) {
        this.product = product;
        this.amount = amount;
        this.order = order;
    }

    public Integer getId() {
        return Id;
    }
    public void setId(Integer Id) {
        this.Id = Id;
    }
    public Product getProduct() {
        return product;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    public Double getAmount() {
        return amount;
    }
    public void setAmount(Double amount) {
        this.amount = amount;
    }
    public Order getOrder() {
        return order;
    }
    public void setOrder(Order order) {
        this.order = order;
    }
}
