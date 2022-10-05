package com.example.practic;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-04
 * Time: 오전 10:29
 * Comments:
 */
public class Java {
    int serial;
    String owner;

    Java(int serial, String owner) {
       this.serial = serial;
       this.owner = owner;
    }

    public String toString() {
        return  serial + "  " +owner;
    }
}

