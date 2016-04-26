package com.autentia.tutoriales.model;

import com.autentia.tutoriales.BaseTest;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;

public class SongTest extends BaseTest<Song> {

    private Album album = mock(Album.class);
    private Style style = mock(Style.class);
    private String title = "Song Title";
    private int trackNumber = 1;
    private int duration = 128;

    @Before
    public void setUp(){
        sut = new Song();
    }

    @Test
    public void shouldSetAlbum(){
        sut.setAlbum(album);
        assertEquals(album, sut.getAlbum());
    }

    @Test
    public void shouldSetStyle(){
        sut.setStyle(style);
        assertEquals(style, sut.getStyle());
    }

    @Test
    public void shouldSetTitle(){
        sut.setTitle(title);
        assertEquals(title, sut.getTitle());
    }

    @Test
    public void shouldSetTrackNumber(){
        sut.setTrackNumber(trackNumber);
        assertEquals(trackNumber, sut.getTrackNumber());
    }

    @Test
    public void shouldSetDuration(){
        sut.setDuration(duration);
        assertEquals(duration, sut.getDuration());
    }
}
