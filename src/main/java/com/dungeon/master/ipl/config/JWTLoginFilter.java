package com.dungeon.master.ipl.config;

import com.dungeon.master.ipl.model.Credentials;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONException;
import com.google.gson.JsonObject;
import org.json.JSONObject;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;

public class JWTLoginFilter extends AbstractAuthenticationProcessingFilter {

    public JWTLoginFilter(String url, AuthenticationManager authManager) {
        super(new AntPathRequestMatcher(url));
        setAuthenticationManager(authManager);
    }

    @Override
    public Authentication attemptAuthentication(
            HttpServletRequest req, HttpServletResponse res)
            throws AuthenticationException, IOException, ServletException {
        Credentials creds = new ObjectMapper().readValue(req.getInputStream(), Credentials.class);
        return getAuthenticationManager().authenticate(
                new UsernamePasswordAuthenticationToken(
                        creds.getUsername(),
                        creds.getPassword(),
                        Collections.emptyList()
                )
        );
    }

    @Override
    protected void successfulAuthentication(
            HttpServletRequest req,
            HttpServletResponse res, FilterChain chain,
            Authentication auth) throws IOException, ServletException {
            AuthenticationService
                .addAuthentication(res, auth.getName());


        JSONObject jsonResponse = new JSONObject();

        try {
            jsonResponse.put("jwtToken", res.getHeader("authorization") );
            jsonResponse.put("message", "Login Successful");
        } catch (JSONException e) {
            e.printStackTrace();
            throw new ServletException("Error in authentication");
        }

        res.getWriter().write(jsonResponse.toString());
        res.setHeader("Subject", auth.getName());

    }
}