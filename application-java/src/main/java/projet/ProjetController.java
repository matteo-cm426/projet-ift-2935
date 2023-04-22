package projet;

import javafx.fxml.FXML;
import javafx.scene.control.TextArea;


// Classe servant à controler les action de l'interface
public class ProjetController {

    @FXML
    private TextArea response;

    // Action bouton 1
    @FXML
    protected void onQ1Click() {
        String result = DbUtils.executeQuery("SELECT * FROM livres");
        response.setText(result);
    }

    // Action bouton 2
    @FXML
    protected void onQ2Click() {
        response.setText("Test 2");
    }

    // Action bouton 3
    @FXML
    protected void onQ3Click() {
        response.setText("Test 3");
    }

    // Action bouton 4
    @FXML
    protected void onQ4Click() {
        response.setText("Test 4");
    }
}