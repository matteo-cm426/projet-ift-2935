package projet;

import javafx.fxml.FXML;
import javafx.scene.control.TextArea;


public class ProjetController {




    @FXML
    private TextArea response;

    @FXML
    protected void onQ1Click() {
        String result = DbUtils.executeQuery("SELECT * FROM livres");
        response.setText(result);
    }

    @FXML
    protected void onQ2Click() {
        response.setText("Test 2");
    }

    @FXML
    protected void onQ3Click() {
        response.setText("Test 3");
    }

    @FXML
    protected void onQ4Click() {
        response.setText("Test 4");
    }
}