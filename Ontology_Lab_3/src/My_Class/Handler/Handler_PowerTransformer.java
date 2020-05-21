package My_Class.Handler;

import My_Class.Bound_Ontology;
import My_Class.Interaction_Ontology;
import My_Class.Ontology_Name.Name_Attribut;
import My_Class.Ontology_Name.Name_Properties;
import My_Class.Ontology_Name.Type_Equipment;
import org.semanticweb.owlapi.model.OWLIndividual;
import ru.smarteps.scl.TTerminal;

public class Handler_PowerTransformer implements Base_Handler {



    @Override
    public void set_attribut(Bound_Ontology bound, Interaction_Ontology ontology) {

    }

    @Override
    public void set_property(Bound_Ontology bound, Interaction_Ontology ontology) {

    }

    @Override
    public Type_Equipment.Type_Class get_type() {
        return Type_Equipment.Type_Class.PowerTransformer ;
    }
}
