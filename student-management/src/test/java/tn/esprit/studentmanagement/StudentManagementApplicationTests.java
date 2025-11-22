package tn.esprit.studentmanagement;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test")   // CETTE LIGNE EST LA CLÉ DE TOUT
class StudentManagementApplicationTests {

    @Test
    void contextLoads() {
    }
}