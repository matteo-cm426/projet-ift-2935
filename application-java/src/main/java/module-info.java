module bdd.projet.demo1 {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
            
                            
    opens projet to javafx.fxml;
    exports projet;
}