package com.example.floormill_2018_;

public class responsemodel
{ //http://192.168.100.191/api/login.php
   String message;

   public responsemodel(String message) {
      this.message = message;
   }

   public responsemodel() {
   }

   public String getMessage() {
      return message;
   }

   public void setMessage(String message) {
      this.message = message;
   }
}
