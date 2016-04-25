package com.autentia.tutoriales.model;

import com.autentia.tutoriales.BaseTest;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class ArtistTest extends BaseTest<Artist> {

    private String name;

    @Before
    public void setUp(){
        this.sut = new Artist();
    }

    @Test
    public void shouldSetArtistName(){
        sut.setName(name);
        assertEquals(name,sut.getName());
    }


}