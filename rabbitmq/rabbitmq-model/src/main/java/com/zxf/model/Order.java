package com.zxf.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

@Setter
@Getter
@ToString
public class Order implements Serializable {
    private int  id;
    private String  name;
    private String  messageId;
}

