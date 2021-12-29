
package interfaces;

import DTO.Jugador;
import DTO.Jugadores;
import DTO.Preguntas;
import DTO.Respuestas;
import java.util.ArrayList;


public interface DAOjugador {
    
    public void guardar (Jugador jug) throws Exception;
    public void guardarPregunta (Preguntas preg) throws Exception;
    public ArrayList<Preguntas> l_preguntas(int x) throws Exception;
    public ArrayList<Respuestas> l_respuestas(int x) throws Exception;
    public ArrayList<Jugadores> buscarUsuarios() throws Exception;
}
