package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;

public class Handler_ConnectivityNode implements Base_Handler{


    @Override
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology) {
        OWLIndividual ind = bound.getIndividual();
        //id
        ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.Object_ID),
                ind, Long.toString(System.nanoTime()));
    }

    @Override
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology) {
        OWLIndividual ind_Domains = bound.getIndividual(); // получаем из узла индивида

        Bound_Ontology parent = bound.get_needed_parent(bound, Type_Equipment.Type_Class.EquipmentType);

        if(parent==null){
            System.out.println("При добавлении свойства "+Type_Equipment.Type_Class.EquipmentType.toString()+
                    " к индивиду "+ontology.get_individ_name(ind_Domains) + " произошла ошибка - не найден нужный родитель");
        }else {
            OWLIndividual ind_Ranges = parent.getIndividual();
            ontology.set_obj_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.isConnected),
                    ontology.get_individ_name(ind_Domains), ontology.get_individ_name(ind_Ranges));
        }
    }

    @Override
    public Type_Equipment.Type_Class get_type() {
        return Type_Equipment.Type_Class.ConnectivityNode;
    }
}
