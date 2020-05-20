package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;

public class Handler_ConductingEquipment implements Base_Handler {


    @Override
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology) {

    }

    @Override
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology) {
        OWLIndividual ind_Domains = bound.getIndividual(); // получаем из узла индивида

        Bound_Ontology parent = bound.get_needed_parent(bound, Type_Equipment.Type_Class.VoltageLevel);
        if(parent==null){
            System.out.println("При добавлении свойства "+Type_Equipment.Type_Class.VoltageLevel.toString()+" к индивиду "+ontology.get_individ_name(ind_Domains) + " произошла ошибка - не найден нужный родитель");
        }else {
            OWLIndividual ind_Ranges = parent.getIndividual();
            ontology.set_obj_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.isVoltage),
                    ontology.get_individ_name(ind_Domains), ontology.get_individ_name(ind_Ranges));
        }

        //TODO
        // это не работает

//        parent = bound.get_needed_parent(bound, typeToFind);
//        if(parent==null){
//            System.out.println("При добавлении свойства "+typeToFind+" к индивиду "+ontology.get_individ_name(ind_Domains) + " произошла ошибка - не найден нужный родитель");
//        }else {
//            OWLIndividual ind_Ranges = parent.getIndividual();
//            ontology.set_obj_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.isInjury),
//                    ontology.get_individ_name(ind_Domains), ontology.get_individ_name(ind_Ranges));
//        }


        OWLIndividual ind_Ranges =  bound.getIndividual();

        parent = bound.get_needed_parent(bound, Type_Equipment.Type_Class.RelayTerminal);
        if(parent==null){
            System.out.println("При добавлении свойства "+Type_Equipment.Type_Class.RelayTerminal.toString()+" к индивиду "+ontology.get_individ_name(ind_Domains) + " произошла ошибка - не найден нужный родитель");
        }else {
            ind_Domains = parent.getIndividual();
            ontology.set_obj_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.isProtectedBy),
                    ontology.get_individ_name(ind_Domains), ontology.get_individ_name(ind_Ranges));
        }

    }

    @Override
    public Type_Equipment.Type_Class get_type() {
        return Type_Equipment.Type_Class.ConductingEquipment;
    }

    // нужен метод isElectricityConnect для связи между оборудованием, поскольку не уверен, что можно найти через родителей второе нужное оборудование
    // ?

}
