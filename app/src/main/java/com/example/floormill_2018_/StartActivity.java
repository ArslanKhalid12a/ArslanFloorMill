package com.example.floormill_2018_;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

//https://www.figma.com/file/wXw6QPIw5x9f30ckE32nS1/Material-Icons-Outlined-Copy?node-id=0%3A22
//https://www.figma.com/file/mVv6NSWhyL8DnyDxpHczxq/Better-Buys?node-id=481%3A6

public class StartActivity extends AppCompatActivity {
    CardView cardAdmin, cardReg, cardPrd;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getSupportActionBar().hide();
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_start);
        cardAdmin = findViewById(R.id.c2);
        cardReg = findViewById(R.id.c1);
        cardPrd = findViewById(R.id.c3);

        cardReg.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(StartActivity.this,Register.class);
                startActivity(i);
            }
        });
        cardAdmin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(StartActivity.this,Login.class);
                startActivity(i);
            }
        });
        cardPrd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(StartActivity.this,ViewActivity.class);
                startActivity(i);
            }
        });


    }
}