package My_Class;

// создание правил между индивидами
// а также заполнение атрибутов

import My_Class.Handler.Handler;
import My_Class.Ontology_Name.Injury_type;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.*;


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

    public static void InjuryCreator(Interaction_Ontology ontology){
        Injury_type.init_map();
        String name = Type_Equipment.get_type_class(Type_Equipment.Type_Class.InjuryType);

        for (String injury: Injury_type.injury_type.keySet()){
            OWLIndividual ind = ontology.set_individual_axiom(name, injury);
            ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.Object_ID),
                    ind, Long.toString(System.nanoTime()));
        }

    }

}
