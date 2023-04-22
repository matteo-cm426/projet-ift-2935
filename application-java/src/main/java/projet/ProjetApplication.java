package projet;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

// Classe principale, avec des méthodes pour l'initialisation de l'application
public class ProjetApplication extends Application {

    // Méthode d'initialisation
    @Override
    public void start(Stage stage) throws IOException {
        // Création de la fenêtre
        FXMLLoader fxmlLoader = new FXMLLoader(ProjetApplication.class.getResource("hello-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 500, 400);
        stage.setTitle("IFT2935 - Projet");
        stage.setScene(scene);
        stage.show();

        // Connexion à la base de donnée
        DbUtils.connect();
    }

    public static void main(String[] args) {
        launch();
    }
}