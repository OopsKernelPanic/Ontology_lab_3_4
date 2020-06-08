import My_Class.Interaction_Ontology;
import My_Class.Link_Creater;
import My_Class.Parsing_Ontology;
import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.semanticweb.owlapi.model.OWLOntologyStorageException;
import ru.smarteps.scl.SCL;

import javax.xml.bind.JAXBException;
import java.io.FileNotFoundException;


public class TEST {


    public static void main(String[] args) throws OWLOntologyCreationException, FileNotFoundException, OWLOntologyStorageException, JAXBException {


//        String Path_XML = "/Users/darkness/Downloads/PIGv10.scd";


        String Path_Main = "/Users/darkness/Downloads/Ontology_Lab/";
        
        String Path_XML = Path_Main + "src/resources/PIGv10.scd";

        String Path_Ontology = Path_Main + "src/resources/Lab_3_1.owl";
        String Path_Ret = Path_Main + "src/resources/ontology_new.owl";
        String Path_Excel = Path_Main + "src/resources/InjuryForParsing.xlsx";

        SCL scl = WorkWithConfigurationFiles.unMarshalAny(SCL.class, Path_XML);

        Interaction_Ontology ontology = new Interaction_Ontology(Path_Ontology, Path_Excel);

//           парсим
        Parsing_Ontology.parsing(scl, ontology);

        // добавляем виды повреждений
        Parsing_Ontology.InjuryParsing(ontology);
        ontology.apply_change();
//
        Link_Creater.Creater(ontology.get_bound(), ontology);
        ontology.apply_change();

        // добавляем связи между оборудованием и видами повреждений
        Link_Creater.InjuryCreator(ontology);
        ontology.apply_change();

//        ontology.save_ontology("/Users/darkness/Downloads/Ontology_Lab_3/src/resources/ontology_new.owl");
        ontology.save_ontology(Path_Ret);


    }
}

