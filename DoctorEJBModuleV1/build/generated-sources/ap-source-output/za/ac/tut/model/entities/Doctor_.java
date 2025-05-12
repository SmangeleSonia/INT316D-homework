package za.ac.tut.model.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-11T22:22:33")
@StaticMetamodel(Doctor.class)
public class Doctor_ { 

    public static volatile SingularAttribute<Doctor, String> gender;
    public static volatile SingularAttribute<Doctor, String> surname;
    public static volatile SingularAttribute<Doctor, String> name;
    public static volatile SingularAttribute<Doctor, Long> id;
    public static volatile SingularAttribute<Doctor, Date> creationDate;
    public static volatile SingularAttribute<Doctor, Integer> age;
    public static volatile ListAttribute<Doctor, String> tasks;
    public static volatile SingularAttribute<Doctor, byte[]> image_source;

}