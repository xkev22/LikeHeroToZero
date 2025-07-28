package likeherotozero;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.servlet.http.HttpSession;

import likeherotozero.UserService;
import likeherotozero.AppUser;

@Named("loginController")
@RequestScoped
public class LoginController implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private String benutzername;
    private String passwort;

    @Inject
    private UserService userService;

    public String login() {
        FacesContext ctx = FacesContext.getCurrentInstance();

        // Versuche Login über den Service
        AppUser u = userService.login(benutzername, passwort);
        if (u != null) {
            // erfolgreicher Login → User in Session ablegen
            HttpSession session = 
                (HttpSession) ctx.getExternalContext().getSession(true);
            session.setAttribute("currentUser", u);

            // Direkte Weiterleitung
            try {
                ctx.getExternalContext().redirect("admin.xhtml");
                return null;
            } catch (java.io.IOException e) {
                // Fallback
                return "/admin";
            }
        } else {
            // Fehlermeldung anzeigen
            ctx.addMessage(null,
                new FacesMessage(FacesMessage.SEVERITY_ERROR,
                                 "Login fehlgeschlagen. Bitte prüfen Sie Ihre Eingaben.",
                                 null));
            ctx.getExternalContext().getFlash().setKeepMessages(true);
            return "login?faces-redirect=true";
        }
    }

    public String logout() {
        FacesContext ctx = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) ctx.getExternalContext().getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "/login?faces-redirect=true";
    }

    public void checkLogin() {
        FacesContext ctx = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) ctx.getExternalContext().getSession(false);
        if (session == null || session.getAttribute("currentUser") == null) {
            try {
                ctx.getExternalContext().redirect("login.xhtml");
            } catch (java.io.IOException e) {
                // Fehlerbehandlung
            }
        }
    }

    // Getter & Setter
    public String getBenutzername() {
        return benutzername;
    }
    public void setBenutzername(String benutzername) {
        this.benutzername = benutzername;
    }
    public String getPasswort() {
        return passwort;
    }
    public void setPasswort(String passwort) {
        this.passwort = passwort;
    }
}
