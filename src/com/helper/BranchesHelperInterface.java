package com.helper;

import java.util.List;

import com.model.Branch;

public interface BranchesHelperInterface {

	void insertBranches();

	public List<Branch> showBranch();

	int deleteBranch(String id);

	public Branch showSelectedBranch(int id);

	public int updateBranch(int id);

}
