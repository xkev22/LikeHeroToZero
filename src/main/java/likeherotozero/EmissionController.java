package likeherotozero;

import jakarta.annotation.PostConstruct;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.faces.event.ComponentSystemEvent;
import jakarta.faces.event.PhaseId;
import jakarta.inject.Named;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;

import java.io.Serializable;
import java.util.List;

@Named("emissionController")
@ApplicationScoped
public class EmissionController implements Serializable {

    private static final long serialVersionUID = 1L;

    private EntityManagerFactory emf;
    private EntityManager em;

    private String ausgewaehltesLand;
    private Emission ausgewaehlteEmission;
    private Emission neu;

    @PostConstruct
    public void init() {
        emf = Persistence.createEntityManagerFactory("likeherotozeroPU");
        em  = emf.createEntityManager();
        resetNeu();
    }

    public void onPrerenderView(ComponentSystemEvent event) {
        FacesContext ctx = FacesContext.getCurrentInstance();
        if (!ctx.isPostback() && ctx.getCurrentPhaseId() == PhaseId.RENDER_RESPONSE) {
            resetNeu();
        }
    }

    public void onPrerenderPublic(ComponentSystemEvent event) {
        FacesContext ctx = FacesContext.getCurrentInstance();
        if (!ctx.isPostback() && ctx.getCurrentPhaseId() == PhaseId.RENDER_RESPONSE) {
            ausgewaehltesLand    = null;
            ausgewaehlteEmission = null;
        }
    }

    private void resetNeu() {
        neu = new Emission();
        neu.setEinheit("t CO₂ pro Kopf");
    }

    // AutoComplete-Vorschläge für das Public-Formular
    public List<String> vorschlaege(String eingabe) {
        TypedQuery<String> q = em.createQuery(
            "SELECT DISTINCT e.land FROM Emission e WHERE LOWER(e.land) LIKE :eingabe",
            String.class);
        q.setParameter("eingabe", eingabe.toLowerCase() + "%");
        return q.getResultList();
    }

    // Neueste Emission für das Public-Formular
    public void ladeEmission() {
        // Prüfe ob ein Land eingegeben wurde
        if (ausgewaehltesLand == null || ausgewaehltesLand.trim().isEmpty()) {
            FacesContext.getCurrentInstance()
                        .addMessage(null,
                            new FacesMessage(FacesMessage.SEVERITY_WARN, 
                                "Bitte geben Sie ein Land ein.", ""));
            ausgewaehlteEmission = null;
            return;
        }

        TypedQuery<Emission> q = em.createQuery(
            "SELECT e FROM Emission e WHERE LOWER(e.land)=:land ORDER BY e.jahr DESC",
            Emission.class);
        q.setParameter("land", ausgewaehltesLand.toLowerCase());
        q.setMaxResults(1);
        List<Emission> result = q.getResultList();
        
        if (result.isEmpty()) {
            // Land nicht in der Liste gefunden
            FacesContext.getCurrentInstance()
                        .addMessage(null,
                            new FacesMessage(FacesMessage.SEVERITY_ERROR, 
                                "Das Land '" + ausgewaehltesLand + "' ist nicht in der Liste aufgeführt.", ""));
            ausgewaehlteEmission = null;
        } else {
            ausgewaehlteEmission = result.get(0);
        }
    }

    // Alle Emissionen für die Admin-Tabelle
    public List<Emission> getEmissionen() {
        TypedQuery<Emission> q = em.createQuery(
            "SELECT e FROM Emission e ORDER BY e.jahr DESC",
            Emission.class);
        return q.getResultList();
    }

    // Neue Emission speichern (Admin-Formular)
    public void hinzufuegenEmission() {
        if (neu != null
            && neu.getLand()    != null && !neu.getLand().isBlank()
            && neu.getEinheit() != null && !neu.getEinheit().isBlank()
            && neu.getJahr()    != null && neu.getJahr() > 0
            && neu.getWert()    != null && neu.getWert() >= 0) {

            em.getTransaction().begin();
            em.persist(neu);
            em.getTransaction().commit();

            resetNeu();
        } else {
            FacesContext.getCurrentInstance()
                        .addMessage(null,
                            new FacesMessage("Bitte alle Felder korrekt ausfüllen."));
        }
    }

    // Eintrag löschen (Admin-Formular)
    public void loescheEmission(Emission e) {
        em.getTransaction().begin();
        Emission toRemove = em.find(Emission.class, e.getId());
        if (toRemove != null) {
            em.remove(toRemove);
        }
        em.getTransaction().commit();
    }

    // Getter/Setter

    public String getAusgewaehltesLand() {
        return ausgewaehltesLand;
    }
    public void setAusgewaehltesLand(String land) {
        this.ausgewaehltesLand = land;
    }

    public Emission getAusgewaehlteEmission() {
        return ausgewaehlteEmission;
    }
    public void setAusgewaehlteEmission(Emission e) {
        this.ausgewaehlteEmission = e;
    }

    public Emission getNeu() {
        return neu;
    }
    public void setNeu(Emission neu) {
        this.neu = neu;
    }
}
