package com.artgallery.dao;

import java.time.LocalDateTime;

import com.artgallery.models.Cart;

public interface CartDao {
	
	public Cart getCart(int uid);
	public int createCart(int uid);
	public int updateCartTotal(int cart_id, double price);
	public int updateCartStatus(int cart_id, LocalDateTime date);
	public LocalDateTime getCartDate(int cart_id);
	public Cart getCompleteCart(int uid, int cart_id);

}
