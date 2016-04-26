package com.autentia.tutoriales.model;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;

import org.junit.Assert;
import org.junit.Before;

import com.autentia.tutoriales.BaseTest;
import org.junit.Test;

public class AlbumTest extends BaseTest<Album> {

    private Artist artist = mock(Artist.class);
    private String name = "Album Name";
    private int releaseYear = 1982;

    @Before
    public void setUp() {
        sut = new Album();
        sut.setArtist(artist);
    }

    @Test
    public void shouldSetArtist(){
        assertEquals(artist, sut.getArtist());
    }

    @Test
    public void shouldSetName(){
        sut.setName(name);
        assertEquals(name, sut.getName());
    }

    @Test
    public void shouldSetReleaseYear(){
        sut.setReleaseYear(releaseYear);
        assertEquals(releaseYear, sut.getReleaseYear());
    }
}
