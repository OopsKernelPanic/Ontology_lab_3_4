package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.TTerminal;
import ru.smarteps.scl.TVoltageLevel;

public class Handler_Terminal implements Base_Handler {


    @Override
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology) {
        TTerminal terminal = Bound_Ontology.<TTerminal>get_element_by_type(bound); // получаем из узла объект (терминал)

        OWLIndividual ind = bound.getIndividual(); // получаем из узла индивида
        String voltageLevelName = terminal.getVoltageLevelName(); // получаем уровень напряжения терминала

        // заполняем имя
        ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.VoltageLevelName), ind, voltageLevelName);

        // заполнение класса напряжения
        ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.VoltageClass), ind, Handler_VoltageLevel.get_voltage_class(voltageLevelName));

    }

    @Override
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology) {
        OWLIndividual ind_Domains = bound.getIndividual(); // получаем из узла индивида

        Bound_Ontology parent = bound.get_needed_parent(bound, Type_Equipment.Type_Class.EquipmentType);
        if(parent==null){
            System.out.println("При добавлении свойства "+Type_Equipment.Type_Class.EquipmentType.toString()+" к индивиду "+ontology.get_individ_name(ind_Domains) + " произошла ошибка - не найден нужный родитель");
        }else {
            OWLIndividual ind_Ranges = parent.getIndividual();
            ontology.set_obj_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.Protects),
                    ontology.get_individ_name(ind_Domains), ontology.get_individ_name(ind_Ranges));
        }
    }

    @Override
    public Type_Equipment.Type_Class get_type() {
        return Type_Equipment.Type_Class.RelayTerminal;
    }
}
