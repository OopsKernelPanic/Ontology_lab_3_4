package My_Class.Ontology_Name;

// имена свойств
public class Name_Properties {

    static public enum Properties {
        isConnected,
        isConnectedObject,
        isElectricalConnected,
        isInjury,
        isProtectedBy,
        isVoltage,
        Protects
    }


    /**
     *
     * Получить имя основных свойств по enum.
     * @param type - свойство, который хочется получить
    */
    static public String get_type_class(Properties type){
        String ret = "";
        switch(type){
            case isConnected:
                ret += "isConnected";
                break;
            case isConnectedObject:
                ret += "isConnectedObject";
                break;
            case isElectricalConnected:
                ret += "isElectricalConnected";
                break;
            case isInjury:
                ret += "isInjury";
                break;
            case isProtectedBy:
                ret += "isProtectedBy";
                break;
            case isVoltage:
                ret += "isVoltage";
                break;
            case Protects:
                ret += "Protects";
                break;
        }

        return ret;
    }
}
