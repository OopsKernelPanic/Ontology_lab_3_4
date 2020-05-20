package My_Class.Handler;

// предназначен для создания у индивида атрибута и свойств

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Type_Equipment;

// описывает основные методы
public interface Base_Handler{

    /**
     * Создание атрибутов у объекта
     * @param bound - узел, хранящий описание объекта (SCD + онтология)
     * @param ontology - онтология
     */
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology);


    /**
     * Создание свойств у объекта
     * @param bound - узел, хранящий описание объекта (SCD + онтология)
     * @param ontology - онтология
     */
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology);

    public Type_Equipment.Type_Class get_type();
}
