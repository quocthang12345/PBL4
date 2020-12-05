package com.SpringMVC.util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.SpringMVC.model.dto.MyUserDTO;

@Component
public class SecurityUtils {
	public static MyUserDTO getPrincipal() {
		MyUserDTO myUser = (MyUserDTO) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        return myUser;
    }
	
	
	@SuppressWarnings("unchecked")
	public static List<String> getAuthorities() {
		List<String> results = new ArrayList<>();
		List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
}