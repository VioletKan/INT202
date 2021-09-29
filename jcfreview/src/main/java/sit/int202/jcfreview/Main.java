package sit.int202.jcfreview;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello Maven");
        Student student = new Student();
        student.setId(1001);
        student.setName("Somchai");
        student.setGpax(3.95);

        System.out.println(student);
        System.out.println(System.identityHashCode(student));
        System.out.println(Long.toHexString(student.hashCode()));
        System.out.println("---------------");
        Student student1 = new Student(1001, "Somchai", 3.95);
        System.out.println(student1);
        System.out.println(Long.toHexString(System.identityHashCode(student1)));
        System.out.println(Long.toHexString(student.hashCode()));
        Set<Student> set = new TreeSet(Student.STUDENT_COMPARATOR);
        set.add(student);
        System.out.println(set.contains(student1));


    }
}
