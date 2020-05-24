package My_Class.Ontology_Name;

import My_Class.Excel.Excel_Importer;

import java.util.HashMap;

public class Injury_type {

    public static HashMap<String, String> injury_type = null;

     public static void init_map(){
        injury_type = Excel_Importer.importInjury();
    }

    HashMap<String, String> getInjuryMap(){
         return injury_type;
    }
}
