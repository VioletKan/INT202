package sit.int202.classicmodelweb.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.management.StandardEmitterMBean;

@Table(name = "offices")
@Entity
@Getter
@Setter
@ToString

public class Office {
    @Id

    private String officeCode;
    private String city;
    private String country;
    private String postalCode;


    }


