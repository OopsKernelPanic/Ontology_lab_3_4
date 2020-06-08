package My_Class;

// создание правил между индивидами
// а также заполнение атрибутов

import My_Class.Handler.Handler;
import My_Class.Ontology_Name.Injury_type;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import ru.smarteps.scl.TConductingEquipment;

import java.util.ArrayList;
import java.util.HashMap;


public class Link_Creater {


    public Link_Creater() throws OWLOntologyCreationException {
    }

    /**
     * Общий метод. Дерни его для основного узла SCD и онтология заполнится свойствами и атрибутами.
     * @param bound
     * @param ontology
     */
    public static void Creater(Bound_Ontology bound, Interaction_Ontology ontology) {
        // вызываем обработчик
        Handler.handler(bound, ontology);

        System.out.println("раскрываем" + bound.getType());
        // запускаем для детей
        for (Bound_Ontology child : bound.get_child()) {
            Creater(child, ontology);
        }

        ontology.apply_change();

    }


    public static void function_handler(Interaction_Ontology ontology, Bound_Ontology bound){
        HashMap<Type_Equipment.Type_Class, ArrayList<String>> dict = Injury_type.getInjuryEquipment();

        Type_Equipment.Type_Class type = bound.getType();

        if (type == Type_Equipment.Type_Class.ConductingEquipment){
            TConductingEquipment element = (TConductingEquipment) bound.get_element();
            type = Type_Equipment.get_type_class(Type_Equipment.map_type.get(element.getType()));
        }

        if (dict.containsKey(type)){

            String property = Name_Properties.get_type_class(Name_Properties.Properties.isInjury);
            String domain = ontology.get_individ_name(bound.getIndividual());

            String name_voltage;

            Bound_Ontology bound_voltage = bound.get_needed_parent(Type_Equipment.Type_Class.VoltageLevel);

            if (bound_voltage != null) {
                String voltage_equip = ontology.get_voltage_equip(bound_voltage);

                for (String it : dict.get(type)) {
                    // добавляем связи в онтологию

                    name_voltage = ontology.get_name_injury(it);

                    if (name_voltage.compareTo(voltage_equip) == 0) {
                        ontology.set_obj_property_axiom(property, domain, it);
                    }
                }
            }
        }
    }

    /**
     * Обработчик узлов
     * @param bound
     */
    public static void handler_bound(Interaction_Ontology ontology, Bound_Ontology bound){
        if (bound != null){
            for (Bound_Ontology it : bound.get_child()){
                handler_bound(ontology, it);
            }
            function_handler(ontology, bound);
        }
    }

    /**
     * Добавление свойств с помощью кривой рекурсии.
     * @param ontology
     */
    public static void InjuryCreator(Interaction_Ontology ontology){

        // получаем начальный узел
        Bound_Ontology bound = ontology.get_bound();

        handler_bound(ontology, bound);
    }

}
