package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.*;

public class Handler_VoltageLevel implements Base_Handler {


    /**
     * Получить уровень напряжения
     * @param name
     * @return
     */
    static String get_voltage_class(String name){
        int value = Integer.valueOf(name);

        String ret = "";

        if (value == 10){
            ret += "Low";
        }
        else if (value == 220){
            ret += "Middle";
        }
        else{
            ret += "High";
        }
        return ret;
    }

    @Override
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology) {
        TVoltageLevel voltageLevel = Bound_Ontology.<TVoltageLevel>get_element_by_type(bound);

        OWLIndividual ind = bound.getIndividual();

        String voltageName = voltageLevel.getName();

        // заполняем имя
        ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.VoltageLevelName), ind, voltageName);

        // заполняем уровень напряжения
        ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.VoltageClass), ind, get_voltage_class(voltageName));

    }

    @Override
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology) {
        TVoltageLevel voltageLevel = Bound_Ontology.<TVoltageLevel>get_element_by_type(bound);
        // ничего не нужно делать :(
    }

    @Override
    public Type_Equipment.Type_Class get_type(){
        return Type_Equipment.Type_Class.VoltageLevel;
    }

}
