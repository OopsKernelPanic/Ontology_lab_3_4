package My_Class.Ontology_Name;

import java.util.HashMap;

public class Type_Equipment {

    static public enum Type_Class{
        SCL,
        Substation,
        Bay,
        ConnectivityNode,
        EquipmentType,
        InjuryType,
        RelayTerminal,
        VoltageLevel,
        ForceEquipment,
        PowerTransformer,
        Winding,
        ConductingEquipment
    }

    static HashMap<String, String> map_type = null;

    static public void init_map(){
        if (map_type == null){
            map_type = new HashMap<>();

            map_type.put("DIS", "Disconnector");
            map_type.put("VTR", "VT");
            map_type.put("CTR", "CT");
            map_type.put("CBR", "Breaker");
            map_type.put("IWL", "OverheadLine");
            map_type.put("CAB", "CableLine");
            map_type.put("REA", "Reactor");
            map_type.put("PTR", "Transformer");
            map_type.put("PTW", "Winding");

        }
    }

    /*!
        Получить имя класса для Protege
     */
    static public String get_type(String type){
        String ret = "";

        if (map_type != null){
            String get_str = map_type.get(type);

            if (get_str != null){
                ret += get_str;
            }
            else{
                return null;
            }
        }

        return ret;
    }

    /**
    Получить имя основных классов по enum.
    @param type - класс, который хочется получить
     */
    static public String get_type_class(Type_Class type){
        String ret = "";

        switch (type){
            case ConnectivityNode:
                ret += "ConnectivityNode";
                break;
            case EquipmentType:
                ret += "EquipmentType";
                break;
            case InjuryType:
                ret += "InjuryType";
                break;
            case RelayTerminal:
                ret += "RelayTerminal";
                break;
            case VoltageLevel:
                ret += "VoltageLevel";
                break;
            case ForceEquipment:
                ret += "ForceEquipment";
                break;
            case PowerTransformer:
                ret += "PowerTransformer";
                break;
            case Winding:
                ret += "Winding";
                break;
            case ConductingEquipment:
                ret += "ConductingEquipment";
                break;
            case SCL:
                ret += "SCL";
                break;
            case Substation:
                ret += "Substation";
                break;
            default:
                return null;
        }

        return ret;
    }

}
