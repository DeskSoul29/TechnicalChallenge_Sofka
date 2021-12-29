package DTO;

public class Jugadores {
    
    int id;
    String nom_jugador;
    int puntos;

    public Jugadores(int id, String nom_jugador, int puntos) {
        this.id = id;
        this.nom_jugador = nom_jugador;
        this.puntos = puntos;
    }
    
    public Jugadores(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_jugador() {
        return nom_jugador;
    }

    public void setNom_jugador(String nom_jugador) {
        this.nom_jugador = nom_jugador;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }
    
}
