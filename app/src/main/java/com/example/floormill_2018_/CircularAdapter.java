package com.example.floormill_2018_;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;


public class CircularAdapter extends RecyclerView.Adapter<CircularAdapter.myviewholder> {
    modelProducts data[];

    public CircularAdapter(modelProducts[] data) {
        this.data = data;
    }

    @NonNull
    @Override
    public myviewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.best_seller_layout, parent, false);
        return new myviewholder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull myviewholder holder, int position) {
        Glide.with(holder.img.getContext()).load("http://192.168.100.205/Arslan151/images/" + data[position].getImagepath()).into(holder.img);

    }

    @Override
    public int getItemCount() {
        return data.length;
    }

    class myviewholder extends RecyclerView.ViewHolder {
        ImageView img;

        public myviewholder(@NonNull View itemView) {
            super(itemView);

            img = itemView.findViewById(R.id.bestSellerImage);


        }
    }

}
