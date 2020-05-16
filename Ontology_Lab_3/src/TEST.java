import My_Class.Interaction_Ontology;
import My_Class.Parsing_Ontology;
import org.apache.jena.datatypes.xsd.XSDDatatype;
import org.apache.jena.ontology.*;
import org.apache.jena.rdf.model.*;
import org.apache.jena.util.FileManager;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.*;
import org.semanticweb.owlapi.reasoner.OWLReasoner;
import org.semanticweb.owlapi.reasoner.OWLReasonerFactory;
import org.semanticweb.owlapi.reasoner.structural.StructuralReasonerFactory;
import ru.smarteps.scl.*;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.*;
import java.util.*;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.io.FileReader;

import ru.smarteps.scl.SCL;


public class TEST {


    public static void main(String[] args) throws OWLOntologyCreationException, FileNotFoundException, OWLOntologyStorageException, JAXBException {


        String Path_XML = "/Users/darkness/Downloads/PIGv10.scd";
        String Path_Ontology = "/Users/darkness/Downloads/Ontology_Lab_3/src/resources/Lab_3_1.owl";

        SCL scl = WorkWithConfigurationFiles.unMarshalAny(SCL.class, Path_XML);

        Interaction_Ontology ontology = new Interaction_Ontology(Path_Ontology);


        // парсим
        Parsing_Ontology.parsing(scl, ontology);

        ontology.apply_change();

        ontology.save_ontology("/Users/darkness/Downloads/Ontology_Lab_3/src/resources/ontology_new.owl");


    }
}

