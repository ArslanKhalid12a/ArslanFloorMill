package com.example.floormill_2018_;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Login extends AppCompatActivity
{
    EditText t1,t2;
    Button loginbtn;
    TextView tv;
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        t1=(EditText)findViewById(R.id.t1);
        t2=(EditText)findViewById(R.id.t2);
        tv=(TextView)findViewById(R.id.tv);
        loginbtn=(Button)findViewById(R.id.savebtn);

        checkuserexistence();

        loginbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                processlogin();
            }
        });
    }

    void processlogin()
    {
        String email_id=t1.getText().toString();
        String password=t2.getText().toString();

        Api service = RetrofitClientInstance.getRetrofitInstance().create(Api.class);

        Call<responsemodel> call = service.verifyuser(email_id, password);

        call.enqueue(new Callback<responsemodel>() {
            @Override
            public void onResponse(Call<responsemodel> call, Response<responsemodel> response) {
                responsemodel obj=response.body();
                String output=obj.getMessage();
                if(output.equals("Incorrect username or password"))
                {
                    t1.setText("");
                    t2.setText("");
                    tv.setTextColor(Color.RED);
                    tv.setText("Invalid username or password");
                }
                if(output.equals("Successful"))
                {
                    SharedPreferences sp=getSharedPreferences("credentials",MODE_PRIVATE);
                    SharedPreferences.Editor editor=sp.edit();
                    editor.putString("username",t1.getText().toString());
                    editor.putString("password",t2.getText().toString());
                    editor.commit();
                    editor.apply();

                    startActivity(new Intent(getApplicationContext(),dashboard.class));
                    finish();
                }
            }

            @Override
            public void onFailure(Call<responsemodel> call, Throwable t) {
                tv.setText(t.toString());
                tv.setTextColor(Color.RED);
            }
        });

    }

    void checkuserexistence()
    {
        SharedPreferences sp=getSharedPreferences("credentials",MODE_PRIVATE);
        if(sp.contains("username"))
            startActivity(new Intent(getApplicationContext(),dashboard.class));
        else {
            tv.setText("Please login");
            tv.setTextColor(Color.RED);
        }
    }
}