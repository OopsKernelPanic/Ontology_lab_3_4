package My_Class;

// создание правил между индивидами
// а также заполнение атрибутов

import My_Class.Handler.Handler;
import org.semanticweb.owlapi.model.*;


public class Link_Creater {


    public Link_Creater() throws OWLOntologyCreationException {
    }


    /**
     * Запуск общего метода Creater для дочерних узлов (который выше)
     *
     * @param bound узел, для детей которого будет запущен метод
     */
    public static void run_for_child(Bound_Ontology bound, Interaction_Ontology ontology) {
        for (Bound_Ontology child : bound.get_child()) {
            Creater(child, ontology);
        }
    }

    /**
     * Общий метод. Дерни его для основного узла SCD и онтология заполнится свойствами и атрибутами.
     * @param bound
     * @param ontology
     */
    public static void Creater(Bound_Ontology bound, Interaction_Ontology ontology) {
        // вызываем обработчик
        Handler.handler(bound, ontology);

        // запускаем для детей
        run_for_child(bound, ontology);
        ontology.apply_change();
    }

}
