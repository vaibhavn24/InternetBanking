package com.helper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Branch;
import com.model.Question;

public interface BranchesHelperInterface {
	
	void insertBranches();
	public List<Branch> showBranch();
	int deleteBranch(String id);
	public Branch showSelectedBranch(int id);
	public int updateBranch(int id);
	
}
