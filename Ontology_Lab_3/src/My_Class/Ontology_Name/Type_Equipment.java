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
        Terminal,
        VoltageLevel,
        ForceEquipment,
        PowerTransformer,
        Winding,
        ConductingEquipment,

        OverheadLine,
        Disconnector,
        VT,
        CT,
        Breaker,
        CableLine,
        Reactor,

        None
    }

    static public HashMap<String, String> map_type = null;

    static public void init_map(){
        if (map_type == null){
            map_type = new HashMap<>();

            map_type.put("DIS", "Disconnector");
            map_type.put("VTR", "VT");
            map_type.put("CTR", "CT");
            map_type.put("CBR", "Breaker");
            map_type.put("IFL", "OverheadLine");
            map_type.put("CAB", "CableLine");
            map_type.put("REA", "Reactor");
            map_type.put("PTR", "Transformer");
            map_type.put("PTW", "Winding");

        }
    }

    /*!
        Получить имя класса для Protege
        Привет, костыли!
     */
    static public String get_type(String type, String name){
        String ret = "";

        if (map_type != null){

            String get_str = map_type.get(type);

            if (get_str != null){

                if (type.compareTo("DIS") == 0){
                    if (name.indexOf("QSG") == -1){
                        ret += "Disconnector";
                    }
                    else{
                        ret += "GroundingKnife";
                    }
                }
                else {
                    ret += get_str;
                }
            }
            else{
                return null;
            }
        }

        return ret;
    }

    static public String get_type(String type){
        return get_type(type, "");
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
            case Terminal:
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
            case Bay:
                ret += "Bus";
                break;
            default:
                return null;
        }

        return ret;
    }


    static public Type_Class get_type_class(String type){
        Type_Class ret = Type_Class.None;

        type = type.replace(" ", "");

        switch (type){
            case "ConnectivityNode":
                ret = Type_Class.ConnectivityNode;
                break;
            case "EquipmentType":
                ret = Type_Class.EquipmentType;
                break;
            case "InjuryType":
                ret = Type_Class.InjuryType;
                break;
            case "Terminal":
                ret = Type_Class.Terminal;
                break;
            case "VoltageLevel":
                ret = Type_Class.VoltageLevel;
                break;
            case "ForceEquipment":
                ret = Type_Class.ForceEquipment;
                break;
            case "Transformer":
                ret = Type_Class.PowerTransformer;
                break;
            case "Winding":
                ret = Type_Class.Winding;
                break;
            case "ConductingEquipment":
                ret = Type_Class.ConductingEquipment;
                break;
            case "SCL":
                ret = Type_Class.SCL;
                break;
            case "Substation":
                ret = Type_Class.Substation;
                break;
            case "Bus":
                ret = Type_Class.Bay;
                break;
            case "OverheadLine":
                ret = Type_Class.OverheadLine;
                break;
            case "Disconnector":
                ret = Type_Class.Disconnector;
                break;
            case "VT":
                ret = Type_Class.VT;
                break;
            case "CT":
                ret = Type_Class.CT;
                break;
            case "Breaker":
                ret = Type_Class.Breaker;
                break;
            case "CableLine":
                ret = Type_Class.CableLine;
                break;
            case "Reactor":
                ret = Type_Class.Reactor;
                break;
        }


        return ret;
    }
}
