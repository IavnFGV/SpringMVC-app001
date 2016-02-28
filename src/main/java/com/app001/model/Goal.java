package com.app001.model;

import org.hibernate.validator.constraints.Range;

/**
 * Created by GFH on 28.02.2016.
 */
public class Goal {
    @Range(min = 1, max = 120)
    private int minutes;

    public int getMinutes() {
        return minutes;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }
}
