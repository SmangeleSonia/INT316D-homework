
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entities.Doctor;
import static za.ac.tut.model.entities.Doctor_.gender;
import static za.ac.tut.model.entities.Doctor_.name;
import static za.ac.tut.model.entities.Doctor_.surname;


@Stateless
public class DoctorFacade extends AbstractFacade<Doctor> implements DoctorFacadeLocal {

    @PersistenceContext(unitName = "DoctorEJBModuleV1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DoctorFacade() {
        super(Doctor.class);
    }

    @Override
    public List<Doctor> find(String fname, String lname) {
        Query query = em.createQuery("select d from Doctor d where d.name = :fname and d.surname = :lname");
        query.setParameter("fname", name);
        query.setParameter("lname", surname);
        List<Doctor> doctor = (List<Doctor>)query.getResultList();
        return doctor;
    }

    @Override
    public List<Doctor> findDocWithinAgeRange(Integer minAge, Integer maxAge) {
        Query query = em.createQuery("select d from Doctor d where d.age >= :minT and d.age <= :maxT");
        query.setParameter("minT", minAge);
        query.setParameter("maxT", maxAge);
        List<Doctor> doctors = query.getResultList();
        return doctors;
    }

    @Override
    public Integer cntAllMaleDoc(String gen) {
        Query query = em.createQuery("select count(d) from Doctor d where d.gender = :gen");
        query.setParameter("gen", gender);
        Integer cnt = (Integer)query.getSingleResult();
        return cnt;        
    }

    @Override
    public Integer cntAllFemaleDoc(String gen) {
        Query query = em.createQuery("select count(d) from Doctor d where d.gender = :gen");
        query.setParameter("gen", gender);
        Integer cnt = (Integer)query.getSingleResult();
        return cnt;
    }

    @Override
    public Doctor getYoungest() {
        Query query = em.createQuery("select d from Doctor d where d.age = (select min(d.age) from Doctor d)");
        Doctor doctor = (Doctor)query.getSingleResult();
        return doctor;
    }
    
}
