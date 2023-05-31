package com.kbstar;

import lombok.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

import javax.security.auth.Subject;
import java.util.Collection;
import java.util.List;

@Data
//@AllArgsConstructor
//@NoArgsConstructor
@Setter
@Getter
@ToString
public class AdditionalAuthenticationToken implements Authentication {

    private final String getGymName;
    private final String getGymPwd;
    private final List<GrantedAuthority> authorities;
    private final String getGymPhone;
    private final String getGymZipcode;
    private final String getGymAddress1;
    private final String getGymAddress2;
    private final String getGymAddress3;
    private final String getGymTitle;
    private final String getGymContents;

    public AdditionalAuthenticationToken(String getGymName, String getGymPwd, List<GrantedAuthority> authorities,
                                         String getGymPhone, String getGymZipcode, String getGymAddress1,
                                         String getGymAddress2, String getGymAddress3, String getGymTitle, String getGymContents) {
        this.getGymName = getGymName;
        this.getGymPwd = getGymPwd;
        this.authorities = authorities;
        this.getGymPhone = getGymPhone;
        this.getGymZipcode = getGymZipcode;
        this.getGymAddress1 = getGymAddress1;
        this.getGymAddress2 = getGymAddress2;
        this.getGymAddress3 = getGymAddress3;
        this.getGymTitle = getGymTitle;
        this.getGymContents = getGymContents;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public Object getCredentials() {
        return null;
    }

    @Override
    public Object getDetails() {
        return null;
    }

    @Override
    public Object getPrincipal() {
        return null;
    }

    @Override
    public boolean isAuthenticated() {
        return false;
    }

    @Override
    public void setAuthenticated(boolean isAuthenticated) throws IllegalArgumentException {

    }

    /**
     * Returns the name of this principal.
     *
     * @return the name of this principal.
     */
    @Override
    public String getName() {
        return null;
    }

    /**
     * Returns true if the specified subject is implied by this principal.
     *
     * @param subject the {@code Subject}
     * @return true if {@code subject} is non-null and is
     * implied by this principal, or false otherwise.
     * @implSpec The default implementation of this method returns true if
     * {@code subject} is non-null and contains at least one principal that
     * is equal to this principal.
     *
     * <p>Subclasses may override this with a different implementation, if
     * necessary.
     * @since 1.8
     */
    @Override
    public boolean implies(Subject subject) {
        return Authentication.super.implies(subject);
    }
}

