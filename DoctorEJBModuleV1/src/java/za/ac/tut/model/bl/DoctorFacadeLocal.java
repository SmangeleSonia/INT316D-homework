
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entities.Doctor;


@Local
public interface DoctorFacadeLocal {

    void create(Doctor doctor);
    void edit(Doctor doctor);
    void remove(Doctor doctor);
    Doctor find(Object id);
    List<Doctor> findAll();
    List<Doctor> findRange(int[] range);
    List<Doctor> find(String fname, String lname);
    List<Doctor> findDocWithinAgeRange(Integer minAge,Integer maxAge);
    Integer cntAllMaleDoc(String gen);
    Integer cntAllFemaleDoc(String gen);
    Doctor getYoungest();
    int count();
    
}
