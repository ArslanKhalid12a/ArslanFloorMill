package com.example.floormill_2018_;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

//http://192.168.100.191/api/login.php
//http://192.168.100.191/api/getData.php
public class RetrofitClientInstance {

    public static final String BASE_URL = "http://192.168.100.205/floormilapi/";
    private static Retrofit retrofit;

    public static Retrofit getRetrofitInstance() {
        if (retrofit == null) {
            retrofit = new Retrofit.Builder()
                    .baseUrl(BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
        }
        return retrofit;
    }
}