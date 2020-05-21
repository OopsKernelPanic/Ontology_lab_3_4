package My_Class;

import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.*;

import java.util.ArrayList;

// commit
public class Bound_Ontology{

    // ================================ конструкторы для разных типов входных данных =================================
    Bound_Ontology(SCL element){
        this((TBaseElement) element, Type_Equipment.Type_Class.SCL);
    }

    Bound_Ontology(TSubstation element){
        this((TBaseElement) element, Type_Equipment.Type_Class.Substation);
    }

    Bound_Ontology(TConnectivityNode element){
        this((TBaseElement) element, Type_Equipment.Type_Class.ConnectivityNode);
    }

    Bound_Ontology(TEquipment element){
        this((TBaseElement) element, Type_Equipment.Type_Class.EquipmentType);
    }

    Bound_Ontology(TBay element){
        this((TBaseElement) element, Type_Equipment.Type_Class.Bay);
    }

    Bound_Ontology(TTerminal element){
        this((TBaseElement) element, Type_Equipment.Type_Class.RelayTerminal);
    }

    Bound_Ontology(TVoltageLevel element){
        this((TBaseElement) element, Type_Equipment.Type_Class.VoltageLevel);
    }

    Bound_Ontology(TPowerTransformer element){
        this((TBaseElement) element, Type_Equipment.Type_Class.PowerTransformer);
    }

    Bound_Ontology(TTransformerWinding element){
        this((TBaseElement) element, Type_Equipment.Type_Class.Winding);
    }

    Bound_Ontology(TConductingEquipment element){
        this((TBaseElement) element, Type_Equipment.Type_Class.ConductingEquipment);
    }

    Bound_Ontology(TBaseElement element, Type_Equipment.Type_Class type){
        this.set_element(element);

        this.set_type(type);

        this.child_list = new ArrayList<>();
    }

// ===================================================================================================================
    protected TBaseElement element; // хранимый объект из SCD
    protected OWLIndividual individual; // его индивид в protege
    protected Bound_Ontology parent; // родительский узел

    protected ArrayList<Bound_Ontology> child_list; // список всех детей

    protected Type_Equipment.Type_Class type;

// ===================================================================================================================

    public Bound_Ontology getParent(){
        return this.parent;
    }

    public OWLIndividual getIndividual(){
        return this.individual;
    }

    public TBaseElement get_element(){
        return this.element;
    }

// ===================================================================================================================

    /**!
     * Добавить в список детей ребенка узла
     * @param bound - дочерний элемент
     */
    public void add_child(Bound_Ontology bound){
        bound.set_parent(this);
        this.child_list.add(bound);
    }

    public Type_Equipment.Type_Class getType(){
        return this.type;
    }

    public void set_element(TBaseElement element){
        this.element = element;
    }

    public void set_individ(OWLIndividual individ){
        this.individual = individ;
    }

    public void set_parent(Bound_Ontology bound){
        this.parent = bound;
    }

    public void set_type(Type_Equipment.Type_Class type){
        this.type = type;
    }

    public ArrayList<Bound_Ontology> get_child(){
        return this.child_list;
    }

// ===================================================================================================================

    /**
     *
     * @param bound - узел, объект scd которого нужно взять
     * @param <T> - тип, который хочется получить
     * @return объект, приведенный к типу T
     */
    static public <T> T get_element_by_type(Bound_Ontology bound){
        return (T) bound.get_element();
    }


// ===================================================================================================================
    // функции которые дописал Миша

    /**!
     * Ищем родителя элемента, пока не найдём нужный тип
     * @param bound - узел, по которому будет идти поиск родителя
     * @param type - название типа элемента родителя, который мы ищем
     */
    ///*
    /*

    Функция работает неправильно. Цикл выполняется бесконечно, т.к. while (true)
    Внутри цикла вызывается метод "получить тип родителя" и полученный тип сравнивается с искомым
     */
    public Bound_Ontology get_needed_parent(Bound_Ontology bound, Type_Equipment.Type_Class type){
        Bound_Ontology tempBound;

        //while (true){
            System.out.println("    ");
            tempBound = bound.getParent();
            //System.out.println("Parent: "+ bound.getParent());
            if(tempBound == null){

                System.out.println("tempBound == null");
                return null;
            } // end if (tempBound == null)

            if (tempBound.getType() == type){

                System.out.println("tempBound == type");
                System.out.println("tempBound.getType(): "+ tempBound.getType());
                System.out.println("type: "+type);
                return tempBound;
            }
            else{
                System.out.println("tempBound != type");
                System.out.println("tempBound.getType(): "+ tempBound.getType());
                System.out.println("type: "+type);

            } // end if-else
        System.out.println("get_needed_parent: доделайте меня");
        return tempBound;

    } // end return


} // end class
