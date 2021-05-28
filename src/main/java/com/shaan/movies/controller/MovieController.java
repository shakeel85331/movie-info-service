package com.shaan.movies.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/service/movies")
public class MovieController {

    @GetMapping(path = "{movie}")
    public ResponseEntity getMovieInfo(@PathVariable("movie") String movie) {
        String movieInfo = " Some Info about movie :: "+ movie;
        return ResponseEntity.status(HttpStatus.OK).body(movieInfo);
    }
}
