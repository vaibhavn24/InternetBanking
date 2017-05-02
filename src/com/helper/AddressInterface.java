package com.helper;

import com.model.Address;

public interface AddressInterface {

	public int insertAddress();

	public Address showSelectedlocalAddress(int id);

	public Address showSelectedPermanantAddress(int id);

	public void updateAddress();

	public void deleteAdminAddress(String id);
}
