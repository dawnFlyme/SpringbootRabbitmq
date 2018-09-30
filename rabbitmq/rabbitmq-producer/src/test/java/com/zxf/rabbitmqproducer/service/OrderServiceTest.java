package com.zxf.rabbitmqproducer.service;

import com.zxf.model.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.UUID;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderServiceTest {

    @Autowired
    private OrderService orderService;


    @Test
    public void createOrder() throws Exception {
        Order order=new Order();
        order.setId(1001);
        order.setName("This is Test Message");
        order.setMessageId(System.currentTimeMillis()+"$"+UUID.randomUUID());
        orderService.createOrder(order);
    }
}