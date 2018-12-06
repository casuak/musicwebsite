package com.glf.jxframe.web.content;

import com.glf.jxframe.dao.SongDao;
import com.glf.jxframe.dao.AuthorDao;
import com.glf.jxframe.entity.Author;
import com.glf.jxframe.entity.Song;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("content/search")
public class SearchController {

    @Autowired
    private SongDao songDao;
    private AuthorDao authorDao;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return "content/search";
    }

    @RequestMapping(value = "list", method = RequestMethod.POST)
    @ResponseBody
    public Object list(@RequestParam("key") String key){
        List<Song> songList = songDao.getSongListByKey(key);
        return songList;
    }

    @RequestMapping(value = "getSongList", method = RequestMethod.POST)
    @ResponseBody
    public Object getSongList(@RequestParam("key") String key){
        List<Song> songList = songDao.getSongListByKey(key);
        return songList;
    }

    @RequestMapping(value = "getAuthorList", method = RequestMethod.POST)
    @ResponseBody
    public Object getAuthorList(@RequestParam("key") String key){
        List<Author> authorList = authorDao.getAuthorListByKey(key);
        return authorList;
    }

}
