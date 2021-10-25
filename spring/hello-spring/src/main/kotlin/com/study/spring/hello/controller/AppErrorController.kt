package com.study.spring.hello.controller

import org.springframework.boot.web.servlet.error.ErrorController
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import javax.servlet.RequestDispatcher
import javax.servlet.http.HttpServletRequest

@Controller
class AppErrorController : ErrorController {
    @RequestMapping("/error")
    fun handleError(request: HttpServletRequest): ResponseEntity<String> {
        val status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE)
        return if (status != null) {
            ResponseEntity
                .status(Integer.valueOf(status.toString()))
                .body("app error!")
        } else {
            ResponseEntity.status(0).body("error")
        }
    }
}