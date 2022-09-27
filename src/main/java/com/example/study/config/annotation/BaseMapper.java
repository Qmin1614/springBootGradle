package com.example.study.config.annotation;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.core.annotation.AliasFor;
import org.springframework.stereotype.Component;

import java.lang.annotation.*;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:37
 * Comments: mapper와 repository를 함께 구현
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Mapper
@Component
public @interface BaseMapper {

    @AliasFor(annotation = Component.class)
    String value() default "";

}
