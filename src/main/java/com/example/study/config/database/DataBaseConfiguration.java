package com.example.study.config.database;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 1:28
 * Comments:
 */
@Configuration
@MapperScan(
        value = {
                "com.example.study.web.dao"
        }
)
public class DataBaseConfiguration {
}
