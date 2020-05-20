package My_Class.Ontology_Name;


// имена атрибутов
public class Name_Attribut {

    static public enum Attributes {
        Object_ID,
        VoltageClass,
        VoltageLevelName,
    };

    //TODO
    // заполни

    /**
     *
     * Получить имя основных атрибутов по enum.
     * @param type - атрибут, который хочется получить
     */
    static public String get_type_class(Attributes type){
        String ret = "";
        switch(type){
            case Object_ID:
                ret += "Object_ID";
                break;
            case VoltageClass:
                ret += "VoltageClass";
                break;
            case VoltageLevelName:
                ret += "VoltageLevelName";
                break;
        }

        return ret;
    }
}
