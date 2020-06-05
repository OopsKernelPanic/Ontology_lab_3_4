package My_Class.Ontology_Name;

import My_Class.Excel.Excel_Importer;

import java.util.ArrayList;
import java.util.HashMap;

public class Injury_type {

    public static HashMap<String, String> injury_type = null;
    public static HashMap<String, ArrayList<Type_Equipment.Type_Class>> injury_type_enum = null;

    // более удобный формат - по типу получил все повреждения
    public static HashMap<Type_Equipment.Type_Class, ArrayList<String>> injury_equipment = null;

    public static void init_map(String Path_File){
        injury_type = Excel_Importer.importInjury(Path_File);

        injury_type_enum = new HashMap<>();

        for (String str : injury_type.keySet()){
            injury_type_enum.put(str, Excel_Importer.get_type(injury_type.get(str)));
        }

        init_equipment_map();
    }

    // создание injury_equipment
    public static void init_equipment_map(){
        injury_equipment = new HashMap<>();

        ArrayList<Type_Equipment.Type_Class> enum_list;

        for (String it : injury_type_enum.keySet()){
            for (Type_Equipment.Type_Class type : injury_type_enum.get(it)){

                // проверка наличия в словаре injury_equipment такого ключа
                if (type != Type_Equipment.Type_Class.None) {
                    if (!injury_equipment.containsKey(type)) {
                        injury_equipment.put(type, new ArrayList<>());
                    }
                    injury_equipment.get(type).add(it);
                }
            }
        }
    }


    public static HashMap<String, String> getInjuryMap(){
         return injury_type;
    }

    public static HashMap<String, ArrayList<Type_Equipment.Type_Class>> getInjuryEnum(){
         return injury_type_enum;
    }

    public static HashMap<Type_Equipment.Type_Class, ArrayList<String>> getInjuryEquipment(){
        return injury_equipment;
    }

}
