package com.example.floormill_2018_;

public class orderDisplayModel {
   String ProductType,Description;

    public String getProductType() {
        return ProductType;
    }

    public void setProductType(String productType) {
        ProductType = productType;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public orderDisplayModel(String productType, String description) {
        ProductType = productType;
        Description = description;
    }
}
