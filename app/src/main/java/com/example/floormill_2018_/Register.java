package com.example.floormill_2018_;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;


public class Register extends AppCompatActivity {
    //http://192.168.100.191/api/register.php
    EditText etname, etpassword;
    Button reg_btnReg;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        etname = findViewById(R.id.email_reg);
        etpassword = findViewById(R.id.pass_reg);
        reg_btnReg = findViewById(R.id.reg_btnReg);
        reg_btnReg.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                userSignUp();
            }
        });

    }

    private void userSignUp() {
        String email_id = etname.getText().toString().trim();
        String password = etpassword.getText().toString().trim();
        Api service = RetrofitClientInstance.getRetrofitInstance().create(Api.class);
        //Defining the user object as we need to pass it with the call
        modelAdmin user = new modelAdmin(  email_id, password  );
        //defining the call
        Call<modelAdmin> call = service.createUser(
                user.getEmail_id().trim(),
                user.getPassword().trim()
        );
        //calling the api
        call.enqueue(new Callback<modelAdmin>() {
            @Override
            public void onResponse(Call<modelAdmin> call, Response<modelAdmin> response) {
                Toast.makeText(Register.this, "Successfully Registered", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onFailure(Call<modelAdmin> call, Throwable t) {
                Toast.makeText(Register.this, "Successfully Registered", Toast.LENGTH_SHORT).show();
            }
        });
    }
}