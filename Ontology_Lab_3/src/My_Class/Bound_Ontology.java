package My_Class;

import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.TBaseElement;

import java.util.ArrayList;


public class Bound_Ontology{

    /**!
     * Возможные хранимые типы
     */
    public static enum Type{
        SCL,
        Substation,
        VoltageLevel,
        PowerTransformer,
        TransformerWinding,
        Bay,
        ConductingEquipment,
        Terminal,
        ConnectivityNode
    }

    Bound_Ontology(TBaseElement element, Type type){
        this.set_element(element);

        this.set_type(type);

        this.child_list = new ArrayList<>();
    }


    protected TBaseElement element; // хранимый объект из SCD
    protected OWLIndividual individual; // его индивид в protege
    protected Bound_Ontology parent; // родительский узел

    protected ArrayList<Bound_Ontology> child_list; // список всех детей

    protected Type type;

    public Bound_Ontology getParent(){
        return this.parent;
    }

    public OWLIndividual getIndividual(){
        return this.individual;
    }

    public TBaseElement get_element(){
        return this.element;
    }

    /**!
     * Добавить в список детей ребенка узла
     * @param bound - дочерний элемент
     */
    public void add_child(Bound_Ontology bound){
        bound.set_parent(this);
        this.child_list.add(bound);
    }

    public Type getType(){
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

    public void set_type(Type type){
        this.type = type;
    }

    public ArrayList<Bound_Ontology> get_child(){
        return this.child_list;
    }
}
