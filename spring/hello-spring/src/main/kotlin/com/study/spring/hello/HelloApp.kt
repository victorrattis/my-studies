package com.study.spring.hello

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
open class HelloApp

fun main(args: Array<String>) {
    runApplication<HelloApp>(*args)
}

@RestController
class HelloController {
    @GetMapping("/")
    fun home(): String {
        return "Hello World"
    }
}

