package com.example.floormill_2018_;


import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

public class OrderListAdapter extends RecyclerView.Adapter<OrderListAdapter.BankListViewHolder> {

    ArrayList<modelProducts> bankListModels;

    View selectBank;

    public OrderListAdapter(ArrayList<modelProducts> bankListModels ) {
        this.bankListModels=bankListModels;

    }


    @Override
    public BankListViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View bankListLayout = LayoutInflater.from(parent.getContext()).inflate(R.layout.recyclerview_row, null);
        BankListViewHolder bankListViewHolder = new BankListViewHolder(bankListLayout);
        return bankListViewHolder;
    }

    @Override
    public void onBindViewHolder(BankListViewHolder holder, int position) {
        holder.tv1.setText(bankListModels.get(position).getStock());
        holder.tvdescrp.setText(bankListModels.get(position).getDescription());
        holder.tvProductType1.setText(bankListModels.get(position).getProductType());
        Glide.with(holder.img1.getContext()).load("http://192.168.100.205/Arslan151/images/" + bankListModels.get(position).getImagepath()).into(holder.img1);

    }

    @Override
    public int getItemCount() {
        return bankListModels.size();
    }

    public class BankListViewHolder extends RecyclerView.ViewHolder {
        TextView tv1, tvProductType1,tvdescrp;
        ImageView img1;

        public BankListViewHolder(View itemView) {
            super(itemView);
            tv1 =  itemView.findViewById(R.id.tvStock);
            tvProductType1 =  itemView.findViewById(R.id.tvDescription);
            tvdescrp =  itemView.findViewById(R.id.tvProductType);
            img1 =   itemView.findViewById(R.id.ivImageView);
         //   selectBank = itemView.findViewById(R.id.cv_selectBank);

        }
    }
}