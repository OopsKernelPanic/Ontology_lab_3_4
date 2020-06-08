package My_Class;

import My_Class.Ontology_Name.Injury_type;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.*;

import java.util.ArrayList;


public class Parsing_Ontology {

    static public String join_name(String str_1, String str_2){
        return str_1 + "_" + str_2;
    }

    static public void parsing(SCL scl, Interaction_Ontology ont){
        ont.bound_ontology = new Bound_Ontology(scl, Type_Equipment.Type_Class.SCL);

        for (TSubstation substation : scl.getSubstation()){
            ont.bound_ontology.add_child(parsing(substation, ont));
        }
    }

    static Bound_Ontology parsing(TSubstation substation, Interaction_Ontology ont){

        Bound_Ontology bound = new Bound_Ontology(substation, Type_Equipment.Type_Class.Substation);

        for (TVoltageLevel level : substation.getVoltageLevel()){
            bound.add_child(parsing(level, ont));
        }

        for (TPowerTransformer transformer : substation.getPowerTransformer()){
            bound.add_child(parsing(transformer, ont));
        }

        return bound;
    }

    static Bound_Ontology parsing(TVoltageLevel voltageLevel, Interaction_Ontology ont){

        Bound_Ontology bound = new Bound_Ontology(voltageLevel, Type_Equipment.Type_Class.VoltageLevel);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.VoltageLevel),
                "V" + voltageLevel.getName()));

        for (TBay bay : voltageLevel.getBay()) {
            bound.add_child(parsing(bay, ont));
        }

        return bound;
    }

    static Bound_Ontology parsing(TPowerTransformer transformer, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(transformer, Type_Equipment.Type_Class.PowerTransformer);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(transformer.getType().toString()),
                transformer.getName()));

        for (TTransformerWinding winding : transformer.getTransformerWinding()) {
            bound.add_child(parsing(winding, ont, transformer));
        }

        return bound;
    }

    static Bound_Ontology parsing(TTransformerWinding winding, Interaction_Ontology ont, TPowerTransformer transformer){
        Bound_Ontology bound = new Bound_Ontology(winding,  Type_Equipment.Type_Class.Winding);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(winding.getType().value()),
                join_name(transformer.getName(),winding.getName())));

        return bound;
    }

    static Bound_Ontology parsing(TBay bay, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(bay,  Type_Equipment.Type_Class.Bay);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.Bay),
                bay.getName()));

        for (TConductingEquipment equipment : bay.getConductingEquipment()){
            bound.add_child(parsing(equipment, ont));
        }

        for (TConnectivityNode node : bay.getConnectivityNode()){
            bound.add_child(parsing(node, ont, bay));
        }

        return bound;
    }

    static Bound_Ontology parsing(TConductingEquipment equipment, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(equipment,  Type_Equipment.Type_Class.ConductingEquipment);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(equipment.getType(), equipment.getName()),
                equipment.getName()));

        // терминалы добавляем в дерево, но не добавляем в онтологию
        for (TTerminal terminal : equipment.getTerminal()){
            bound.add_child(parsing(terminal, ont, equipment));
        }

        return bound;
    }

    @Deprecated
    static Bound_Ontology parsing(TTerminal terminal, Interaction_Ontology ont, TConductingEquipment equipment){
        Bound_Ontology bound = new Bound_Ontology(terminal);

        bound.set_individ(null);

        return bound;
    }

    static Bound_Ontology parsing(TConnectivityNode node, Interaction_Ontology ont, TBay bay){
        Bound_Ontology bound = new Bound_Ontology(node, Type_Equipment.Type_Class.ConnectivityNode);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.ConnectivityNode),
                join_name(node.getName(), bay.getName())));

        return bound;
    }

    public static void InjuryParsing(Interaction_Ontology ontology){

        String name = Type_Equipment.get_type_class(Type_Equipment.Type_Class.InjuryType);

        ArrayList<Bound_Ontology> list_voltage = ontology.get_bound().get_needed_children(Type_Equipment.Type_Class.VoltageLevel);

        ArrayList<String> list_name_voltage = new ArrayList<>();
        String attr_voltage;

        for (Bound_Ontology it_bound : list_voltage){
            attr_voltage = it_bound.getIndividual().toStringID();
            String[] split_name = attr_voltage.split("#");
            attr_voltage = split_name[split_name.length - 1].replace("V", "");
            list_name_voltage.add(attr_voltage);
        }

        String name_voltage;

        for (String injury: Injury_type.injury_type.keySet()){

            String[] split_voltage = injury.split("_");
            name_voltage = split_voltage[split_voltage.length - 1];


            OWLIndividual ind = ontology.set_individual_axiom(name, injury);
            ontology.set_data_property_axiom(Name_Attribut.get_type_class(Name_Attribut.Attributes.Object_ID),
                    ind, Long.toString(System.nanoTime()));

            int index = list_name_voltage.indexOf(name_voltage);

            ontology.set_data_property_axiom(Name_Properties.get_type_class(Name_Properties.Properties.isVoltage),
                    ind, ontology.get_individ_name(list_voltage.get(index).getIndividual()));


        }

    }
}
