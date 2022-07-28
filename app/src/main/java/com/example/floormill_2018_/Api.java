package com.example.floormill_2018_;


import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

//http://192.168.100.191/api/login.php
//http://192.168.100.191/api/getData.php
//http://192.168.100.191/api/register.php
public interface Api {
    @FormUrlEncoded
    @POST("login.php")
    Call<responsemodel> verifyuser(
            @Field("email_id") String email_id,
            @Field("password") String password
    );

    @FormUrlEncoded
    @POST("register.php")
    Call<modelAdmin> createUser(

            @Field("email_id") String email_id,
            @Field("password") String password);


    @POST("displayproducts.php")
    Call<ArrayList<modelProducts>> getOrdersData();

}
