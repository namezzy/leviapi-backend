package top.withlevi.project.service;


import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


/**
 * Created on 11/15/2023 2:52 PM
 *
 * @author Levi
 */

@SpringBootTest
public class UserInterfaceInfoServiceTest {

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Test
    public void invokeCount() {

        boolean invokCount = userInterfaceInfoService.invokeCount(1L, 1L);
        System.out.println("invokCount "+b);
        Assertions.assertTrue(b);
    }
}
