package com.example.floormill_2018_;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class dashboard extends AppCompatActivity {
    Button btn;
    // private List<modelProducts> userLocationsList = new ArrayList<>();
    private ArrayList<modelProducts> players;
    TextView tv;
    String url = "http://192.168.100.205/floormilapi/displayproducts.php";
    String url2 = "http://192.168.100.205/floormilapi/displayorders.php";
    private Object modelProducts;
    RecyclerView orderRv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);
        btn = findViewById(R.id.btn1logout);
        tv = findViewById(R.id.tv);
        orderRv=findViewById(R.id.rec_listorders);
        orderRv.setLayoutManager(new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false));


        display_orders();
        //display given shared pref..
        // SharedPreferences sp=getSharedPreferences("credentials",MODE_PRIVATE);
        //   tv.setText(sp.getString( "username", ""));

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                SharedPreferences sp = getSharedPreferences("credentials", MODE_PRIVATE);
                sp.edit().remove("username").commit();
                sp.edit().remove("password").commit();

                sp.edit().apply();
                startActivity(new Intent(getApplicationContext(), Login.class));
                finish();
            }
        });
    }

    private void display_orders() {


        Api service = RetrofitClientInstance.getRetrofitInstance().create(Api.class);
        Call<ArrayList<modelProducts>> call = service.getOrdersData();
        call.enqueue(new Callback<ArrayList<modelProducts>>() {
            @Override
            public void onResponse(Call<ArrayList<modelProducts>> call, Response<ArrayList<com.example.floormill_2018_.modelProducts>> response) {
                players = response.body();

                OrderListAdapter adapter = new OrderListAdapter(players);
                orderRv.setAdapter(adapter);
            }

            @Override
            public void onFailure(Call<ArrayList<modelProducts>> call, Throwable t) {
                Toast.makeText(dashboard.this, "", Toast.LENGTH_SHORT).show();
            }
        });


    }
}
