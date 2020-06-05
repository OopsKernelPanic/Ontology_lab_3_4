package My_Class;

import My_Class.Handler.Handler;
import My_Class.Ontology_Name.Injury_type;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.*;
import org.semanticweb.owlapi.reasoner.OWLReasoner;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;


public class Interaction_Ontology {

    protected boolean flag_init = false;

    protected OWLOntologyManager manager;

    protected OWLDataFactory df;

    protected OWLOntology ontology;

    protected OWLReasoner reasoner;

    ArrayList<OWLAxiom> list_change; // лист из изменений онтологии.

    public Bound_Ontology bound_ontology; // дерево взаимодействия между онтологией и scd

    /*!
    Открытие файла с онтологией
     */
    public Interaction_Ontology(String path_ontology, String path_excel){
        this.init_ontology(path_ontology);

        this.list_change = new ArrayList<>();

        Type_Equipment.init_map();
        Handler.init();
        Injury_type.init_map(path_excel);

        this.bound_ontology = new Bound_Ontology(null, null);


    }



    /*!
    Инициализируем внутренние объекты для работы с онтологией.
     */
    protected void init_ontology(String path_ontology){
        try {
            if (!this.flag_init) {
                this.flag_init = true;
                this.manager = OWLManager.createOWLOntologyManager();
                this.df = this.manager.getOWLDataFactory();

                this.ontology = manager.loadOntologyFromOntologyDocument(new File(path_ontology));
            }
        }catch (OWLOntologyCreationException e){
            e.printStackTrace();
        }
    }


    /**
     Добавить изменение в лист изменений. Они не будут пока что применены.
     @param axiom добавляемое изменение.
     */

    public void add_change(OWLAxiom axiom){
        this.list_change.add(axiom);
    }

    /*!
    Применить все изменения с онтологией. Список list_change при этом очищается.
     */
    public void apply_change(){
        OWLOntologyManager manager = this.get_Manager();
        OWLOntology ontology = this.get_Ontology();

        AddAxiom add_axiom;

        for (OWLAxiom axiom : this.list_change){
            add_axiom = new AddAxiom(ontology, axiom);
            manager.applyChange(add_axiom);
        }

        this.list_change.clear();
    }

    /*!
     Сохранение онтологии в файл
     */
    public void save_ontology(String path){

        try {
            OutputStream out = new FileOutputStream(path);
            this.get_Manager().saveOntology(this.get_Ontology(), out);
        }
        catch (FileNotFoundException | OWLOntologyStorageException e){
            e.printStackTrace();
        }

    }

    public ArrayList<OWLAxiom> getList(){ return list_change;}

    public OWLOntology get_Ontology(){
        return this.ontology;
    }

    public OWLDataFactory get_Factory(){
        return this.df;
    }

    public OWLOntologyManager get_Manager(){
        return this.manager;
    }

    public String get_iri(){
        return this.get_Ontology().getOntologyID().getOntologyIRI().get().toString() + "#";
    }

    public Bound_Ontology get_bound(){
        return this.bound_ontology;
    }

    /**
     * метод создания аксиомы связи индивида и класса
     * @param owl_class имя класса
     * @param ind имя индивида
     */
    OWLIndividual set_individual_axiom(String owl_class, String ind){
        OWLIndividual ret = null;

        if (owl_class != null && ind != null) {

            OWLDataFactory df = this.get_Factory();
            String ns = this.get_iri(); // вытаскиваем IRI
            OWLClass f_class = df.getOWLClass(IRI.create(ns + owl_class));
            OWLIndividual individ = df.getOWLNamedIndividual(IRI.create(ns + ind));

            this.add_change(df.getOWLClassAssertionAxiom(f_class, individ));

            ret = individ;
        }
        return ret;
    }

    void set_individual_axiom(String owl_class, HashMap<String,String> ind){
        if (owl_class != null && ind != null) {

            OWLDataFactory df = this.get_Factory();
            String ns = this.get_iri(); // вытаскиваем IRI
            OWLClass f_class = df.getOWLClass(IRI.create(ns + owl_class));
            for (String ind_name: ind.keySet()){
                System.out.println(ind_name);
                OWLIndividual individ = df.getOWLNamedIndividual(IRI.create(ns + ind_name));
                this.add_change(df.getOWLClassAssertionAxiom(f_class, individ));
            }
        }
    }

    /**
     * метод создания аксиомы связи класса и подкласса
     * @param up_class имя главного класса
     * @param down_class имя подкласса
     */
    public void set_subclass_axiom(String up_class, String down_class){
        if (up_class != null && down_class != null) {
            OWLDataFactory df = this.get_Factory();
            String ns = this.get_iri(); // вытаскиваем IRI
            OWLClass f_class = df.getOWLClass(IRI.create(ns + up_class));
            OWLClass sub_class = df.getOWLClass(IRI.create(ns + down_class));
            this.add_change(df.getOWLSubClassOfAxiom(f_class, sub_class));
        }
    }


    /**
     * метод создания аксиомы свойства объекта
     * @param obj_prop имя свойства
     * @param ind1 имя индивида
     * @param ind2 имя индивида
     */
    public void set_obj_property_axiom(String obj_prop, String ind1, String ind2){
        String ns = this.get_iri(); // вытаскиваем IRI

        OWLIndividual f_ind = df.getOWLNamedIndividual(IRI.create(ns + ind1));
        OWLIndividual s_ind = df.getOWLNamedIndividual(IRI.create(ns + ind2));

        this.set_obj_property_axiom(obj_prop, f_ind, s_ind);
    }

    public void set_obj_property_axiom(String obj_prop, OWLIndividual ind1, OWLIndividual ind2){
        if (obj_prop != null && ind1 != null && ind2 != null){
            OWLDataFactory df = this.get_Factory();
            String ns = this.get_iri(); // вытаскиваем IRI

            OWLObjectProperty objectProperty = df.getOWLObjectProperty(IRI.create(ns + obj_prop));
            this.add_change(df.getOWLObjectPropertyAssertionAxiom(objectProperty, ind1, ind2));
        }
    }

    /**
     * метод создания аксиомы свойства данных
     * @param data_prop имя свойства данных
     * @param data данные
     */
    public void set_data_property_axiom(String data_prop, OWLIndividual f_ind, String data){  // здесь было int у data  и имя индивида, вместо его самого
        if (data_prop != null ) {
            OWLDataFactory df = this.get_Factory();
            String ns = this.get_iri(); // вытаскиваем IRI

            OWLDataProperty dataProperty = df.getOWLDataProperty(IRI.create(ns + data_prop));
            //OWLIndividual f_ind = df.getOWLNamedIndividual(IRI.create(ns + ind1));
            this.add_change(df.getOWLDataPropertyAssertionAxiom(dataProperty, f_ind, data));
        }
    }

        //функции, которые написал Миша

    /**
     * Получает имя индивида
     * @param individ индивид, имя которого получаем
     */

    public String get_individ_name(OWLIndividual individ){
        String name;

        int index = individ.toStringID().indexOf("#"); // имя индивида в ID начинается после #
        name = individ.toStringID().substring(index+1);
        return name;
    }


}
