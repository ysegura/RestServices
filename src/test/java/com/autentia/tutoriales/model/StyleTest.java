package com.autentia.tutoriales.model;

import com.autentia.tutoriales.BaseTest;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class StyleTest extends BaseTest<Style>{

    private String name = "Folk";

    @Before
    public void setUp(){
        sut = new Style();
    }

    @Test
    public void shouldSetName(){
        sut.setName(name);
        assertEquals(name, sut.getName());
    }
}
