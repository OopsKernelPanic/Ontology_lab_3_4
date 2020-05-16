package My_Class;

// создание правил между индивидами
// а также заполнение атрибутов

import ru.smarteps.scl.*;

public class Link_Creater {

    /**!
     * Общий метод
     * @param bound узел дерева
     */
    static void Creater(Bound_Ontology bound){
        switch (bound.getType()){
            case SCL:
                Creater(bound, (SCL) bound.get_element());
                break;
            case Substation:
                Creater(bound, (TSubstation) bound.get_element());
                break;
            case VoltageLevel:
                Creater(bound, (TVoltageLevel) bound.get_element());
                break;
            case PowerTransformer:
                Creater(bound, (TPowerTransformer) bound.get_element());
                break;
            case TransformerWinding:
                Creater(bound, (TTransformerWinding) bound.get_element());
                break;
            case Bay:
                Creater(bound, (TBay) bound.get_element());
                break;
            case ConductingEquipment
                Creater(bound, (TConductingEquipment) bound.get_element());
                break;
            case Terminal:
                Creater(bound, (TTerminal) bound.get_element());
                break;
            case ConnectivityNode:
                Creater(bound, (TConnectivityNode) bound.get_element());
                break;
        }
    }

    /**
     * Запуск общего метода Creater для дочерних узлов (который выше)
     * @param bound узел, для детей которого будет запущен метод
     */
    static void run_for_child(Bound_Ontology bound){
        for (Bound_Ontology child : bound.get_child()){
            Creater(child);
        }
    }

    static void Creater(Bound_Ontology bound, SCL scl){
        run_for_child(bound);
    }

    static void Creater(Bound_Ontology bound, TSubstation substation){
        run_for_child(bound);
    }

    static void Creater(Bound_Ontology bound, TVoltageLevel voltageLevel){
        // TODO
        // добавить назначение атрибутов

        run_for_child(bound);
    }


    //TODO
    // то же самое для оставшихся методов
}
