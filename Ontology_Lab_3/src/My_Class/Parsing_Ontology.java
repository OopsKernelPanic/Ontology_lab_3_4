package My_Class;

import ru.smarteps.scl.*;
import org.semanticweb.owlapi.model.*;


public class Parsing_Ontology {

    static public String join_name(String str_1, String str_2){
        return str_1 + "_" + str_2;
    }

    static public void parsing(SCL scl, Interaction_Ontology ont){
        ont.bound_ontology.set_element(scl);
        ont.bound_ontology.set_type(Bound_Ontology.Type.SCL);

        for (TSubstation substation : scl.getSubstation()){
            ont.bound_ontology.add_child(parsing(substation, ont));
        }
    }

    static Bound_Ontology parsing(TSubstation substation, Interaction_Ontology ont){

        Bound_Ontology bound = new Bound_Ontology(substation, Bound_Ontology.Type.Substation);

        for (TVoltageLevel level : substation.getVoltageLevel()){
            bound.add_child(parsing(level, ont));
        }

        for (TPowerTransformer transformer : substation.getPowerTransformer()){
            bound.add_child(parsing(transformer, ont));
        }

        return bound;
    }

    static Bound_Ontology parsing(TVoltageLevel voltageLevel, Interaction_Ontology ont){

        Bound_Ontology bound = new Bound_Ontology(voltageLevel, Bound_Ontology.Type.VoltageLevel);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.VoltageLevel),
                voltageLevel.getName()));

        for (TBay bay : voltageLevel.getBay()) {
            bound.add_child(parsing(bay, ont));
        }

        return bound;
    }

    static Bound_Ontology parsing(TPowerTransformer transformer, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(transformer, Bound_Ontology.Type.PowerTransformer);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(transformer.getType().toString()),
                transformer.getName()));

        for (TTransformerWinding winding : transformer.getTransformerWinding()) {
            bound.add_child(parsing(winding, ont, transformer));
        }

        return bound;
    }

    static Bound_Ontology parsing(TTransformerWinding winding, Interaction_Ontology ont, TPowerTransformer transformer){
        Bound_Ontology bound = new Bound_Ontology(transformer, Bound_Ontology.Type.PowerTransformer);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(winding.getType().value()),
                join_name(transformer.getName(),winding.getName())));

        return bound;
    }

    static Bound_Ontology parsing(TBay bay, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(bay, Bound_Ontology.Type.Bay);

        for (TConductingEquipment equipment : bay.getConductingEquipment()){
            bound.add_child(parsing(equipment, ont));
        }

        for (TConnectivityNode node : bay.getConnectivityNode()){
            bound.add_child(parsing(node, ont));
        }

        return bound;
    }

    static Bound_Ontology parsing(TConductingEquipment equipment, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(equipment, Bound_Ontology.Type.ConductingEquipment);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type(equipment.getType()),
                equipment.getName()));

        for (TTerminal terminal : equipment.getTerminal()){
            bound.add_child(parsing(terminal, ont, equipment));
        }

        return bound;
    }

    static Bound_Ontology parsing(TTerminal terminal, Interaction_Ontology ont, TConductingEquipment equipment){
        Bound_Ontology bound = new Bound_Ontology(terminal, Bound_Ontology.Type.Terminal);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.RelayTerminal),
                join_name(equipment.getName(), terminal.getName())));

        return bound;
    }

    static Bound_Ontology parsing(TConnectivityNode node, Interaction_Ontology ont){
        Bound_Ontology bound = new Bound_Ontology(node, Bound_Ontology.Type.ConnectivityNode);

        bound.set_individ(ont.set_individual_axiom(Type_Equipment.get_type_class(Type_Equipment.Type_Class.ConnectivityNode),
                node.getName()));

        return bound;
    }
}
