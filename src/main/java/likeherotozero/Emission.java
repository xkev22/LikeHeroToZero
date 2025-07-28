package likeherotozero;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

@Entity
public class Emission{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String land;
	private Integer jahr;
	private Float wert;
	private String einheit;
	
	public Emission() {
		
	}
	
	public Emission(String land, Integer jahr, Float wert, String einheit) {
		this.land = land;
		this.jahr = jahr;
		this.wert = wert;
		this.einheit = einheit;
	}
	
	public Long getId() {
        return id;
    }

    public String getLand() {
        return land;
    }

    public void setLand(String land) {
        this.land = land;
    }

    public Integer getJahr() {
        return jahr;
    }

    public void setJahr(Integer jahr) {
        this.jahr = jahr;
    }

    public Float getWert() {
        return wert;
    }

    public void setWert(Float wert) {
        this.wert = wert;
    }

    public String getEinheit() {
        return einheit;
    }

    public void setEinheit(String einheit) {
        this.einheit = einheit;
    }
	
}