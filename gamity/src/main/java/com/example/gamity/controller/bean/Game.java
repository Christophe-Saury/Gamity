package com.example.gamity.controller.bean;

public class Game {


    private long idgame;
    private String gameName;

    private String code;

    private String description;
    private String rules;
    private long rating;


    public long getIdgame() {
        return idgame;
    }

    public void setIdgame(long idgame) {
        this.idgame = idgame;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRules() {
        return rules;
    }

    public void setRules(String rules) {
        this.rules = rules;
    }

    public long getRating() {
        return rating;
    }

    public void setRating(long rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Game{" + "idgame:" + idgame + ", gameName:'" + gameName + '\'' + ", code:'" + code + '\'' +
                ", description:" + description +  '\'' + ", rating:" + rating +  '\'' + '}';
    }


    public String toJSON() {
        return "{" +
                "idgame=" + idgame +
                ", gameName='" + gameName + '\'' +
                ", code='" + code + '\'' +
                ", description=" + description +  '\'' +
                ", rating=" + rating +  '\'' +
                '}';
    }

}
