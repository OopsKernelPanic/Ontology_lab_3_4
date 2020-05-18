package My_Class;

// создание правил между индивидами
// а также заполнение атрибутов

import com.google.inject.internal.asm.$Type;
import org.nfunk.jep.function.Str;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.*;
import ru.smarteps.scl.*;

import java.io.File;
import java.util.List;

import static My_Class.Bound_Ontology.Type;



public class Link_Creater {


    public Link_Creater() throws OWLOntologyCreationException {
    }

    /**!
     * Общий метод
     * @param bound узел дерева
     */
    static void Creater(Bound_Ontology bound, Interaction_Ontology ontology){
        switch (bound.getType()){
            case SCL:
                Creater(bound, (SCL) bound.get_element(), ontology);
                break;
            case Substation:
                Creater(bound, (TSubstation) bound.get_element(),ontology);
                break;
            case VoltageLevel:
                Creater(bound, (TVoltageLevel) bound.get_element(), ontology);
                break;
            case PowerTransformer:
                Creater(bound, (TPowerTransformer) bound.get_element(), ontology);
                break;
            case TransformerWinding:
                Creater(bound, (TTransformerWinding) bound.get_element(), ontology);
                break;
            case Bay:
                Creater(bound, (TBay) bound.get_element(), ontology);
                break;
            case ConductingEquipment:
                Creater(bound, (TConductingEquipment) bound.get_element(), ontology);
                break;
            case Terminal:
                Creater(bound, (TTerminal) bound.get_element(), ontology);
                break;
            case ConnectivityNode:
                Creater(bound, (TConnectivityNode) bound.get_element(), ontology);
                break;
        }
    }

    /**
     * Запуск общего метода Creater для дочерних узлов (который выше)
     * @param bound узел, для детей которого будет запущен метод
     */
    static void run_for_child(Bound_Ontology bound, Interaction_Ontology ontology){
        for (Bound_Ontology child : bound.get_child()){
            Creater(child, ontology);
        }
    }

    // методы Creater, для записи информации в онтологию (.owl)


    static void Creater(Bound_Ontology bound, SCL scl, Interaction_Ontology ontology){  // ?

        run_for_child(bound, ontology);
    }

    static void Creater(Bound_Ontology bound, TSubstation substation, Interaction_Ontology ontology){ //?
        OWLIndividual ind = bound.getIndividual();


        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TVoltageLevel voltageLevel, Interaction_Ontology ontology){               //
        OWLIndividual ind = bound.getIndividual();

        String voltageValue = Type_Equipment.get_type_class(Type_Equipment.Type_Class.VoltageLevel);

        ontology.set_data_property_axiom("TVoltageLevelValue", ind, voltageValue);

        run_for_child(bound, ontology);
        ontology.apply_change();
    }


    static void Creater(Bound_Ontology bound, TPowerTransformer powerTransformer, Interaction_Ontology ontology){        //
        OWLIndividual ind = bound.getIndividual();

        String typeTransformer = Type_Equipment.get_type(powerTransformer.getType().toString());

        ontology.set_data_property_axiom("TPowerTransformerType", ind, typeTransformer);


        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TTransformerWinding transformerWinding, Interaction_Ontology ontology){   //
        OWLIndividual ind = bound.getIndividual();
        String transformerWindingType = Type_Equipment.get_type(transformerWinding.getType().value());

        ontology.set_data_property_axiom("TTransformerWindingType", ind, transformerWindingType);

        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TBay bay, Interaction_Ontology ontology){
        OWLIndividual ind = bound.getIndividual();

        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TConductingEquipment conductingEquipment, Interaction_Ontology ontology){  //
        OWLIndividual ind = bound.getIndividual();
        String conductingEquipmentType = conductingEquipment.getType();

        ontology.set_data_property_axiom("TConductingEquipmentType", ind, conductingEquipmentType);

        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TTerminal terminal, Interaction_Ontology ontology){                         //
        OWLIndividual ind = bound.getIndividual();

        String voltageLevelName = terminal.getVoltageLevelName();
        String connectivityNode = terminal.getConnectivityNode();
        String substationName = terminal.getSubstationName();
        String cNodeName = terminal.getCNodeName();
        String bayName = terminal.getBayName();
        String name = terminal.getName();

        ontology.set_data_property_axiom("TTerminalName", ind, name);
        ontology.set_data_property_axiom("TTerminalBayName", ind, bayName);
        ontology.set_data_property_axiom("TTerminal_c_NodeName", ind, cNodeName);
        ontology.set_data_property_axiom("TTerminalSubstationName", ind, substationName);
        ontology.set_data_property_axiom("TTerminalConnectivityName", ind, connectivityNode);
        ontology.set_data_property_axiom("TTerminalVoltageLevelName", ind, voltageLevelName);


        run_for_child(bound, ontology);
        ontology.apply_change();
    }

    static void Creater(Bound_Ontology bound, TConnectivityNode connectivityNode, Interaction_Ontology ontology){         //

        OWLIndividual ind = bound.getIndividual();

        String path = connectivityNode.getPathName();

        ontology.set_data_property_axiom("ConnectivityNodePath", ind, path);


        run_for_child(bound, ontology);
        ontology.apply_change();
    }



}
