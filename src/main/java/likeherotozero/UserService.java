package likeherotozero;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.annotation.PostConstruct;

import likeherotozero.AppUser;
import likeherotozero.PasswordUtil;

@ApplicationScoped
public class UserService {

    private EntityManager em;

    @PostConstruct
    public void init() {
        em = jakarta.persistence.Persistence.createEntityManagerFactory("likeherotozeroPU").createEntityManager();
    }

  
    public void createUser(String username, String plainPassword, String role) {
        String hash = PasswordUtil.hash(plainPassword);
        AppUser u = new AppUser();
        u.setUsername(username);
        u.setPasswordHash(hash);
        u.setRole(role);
        em.persist(u);
    }

    
    public AppUser login(String username, String plainPassword) {
        try {
            AppUser u = em.createQuery(
                "SELECT u FROM AppUser u WHERE u.username = :u", AppUser.class)
              .setParameter("u", username)
              .getSingleResult();

            if (PasswordUtil.verify(plainPassword, u.getPasswordHash())) {
                return u;
            }
        } catch (NoResultException e) {
            // kein User gefunden
        }
        return null;
    }
}
