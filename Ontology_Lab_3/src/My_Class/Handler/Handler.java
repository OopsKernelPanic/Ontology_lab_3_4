package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Type_Equipment;

import java.util.ArrayList;
import java.util.HashMap;

// обработчик для добавления свойств и атрибутов индивидам онтологии
public class Handler {

    // контейнер из обработчиков
    static HashMap<Type_Equipment.Type_Class, Base_Handler> dict_handler;
    static boolean flag_init = false;

    /**
     * Инициализация
     */
    static public void init(){
        if (!flag_init){
            flag_init = true;

            dict_handler = new HashMap<Type_Equipment.Type_Class, Base_Handler>();
            init_handler();
        }
    }

    /**
     * Заполнение словаря объектами-обработчиками
     */
    static void init_handler(){
        //TODO
        // добавить сюда оставшиеся обработчики
        dict_handler.put(Type_Equipment.Type_Class.VoltageLevel, new Handler_VoltageLevel());
        dict_handler.put(Type_Equipment.Type_Class.Winding, new Handler_TransformerWinding());
        dict_handler.put(Type_Equipment.Type_Class.RelayTerminal, new Handler_Terminal());
        dict_handler.put(Type_Equipment.Type_Class.ConnectivityNode, new Handler_ConnectivityNode());
        dict_handler.put(Type_Equipment.Type_Class.ConductingEquipment, new Handler_ConductingEquipment());
        dict_handler.put(Type_Equipment.Type_Class.PowerTransformer, new Handler_PowerTransformer());

    }

    /**
     * Обработка узла, добавление атрибутов и свойств
     * @param bound - узел, который требуется обработать
     * @param ontology - онтология
     */
    static public void handler(Bound_Ontology bound, Interaction_Ontology ontology){
        Base_Handler function_handler = dict_handler.get(bound.getType());

        if (function_handler != null){
            function_handler.set_attribut(bound, ontology);
            function_handler.set_property(bound, ontology);
        }
    }
}
