package My_Class.Excel;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/**
 * Класс для импорта данных из xlsx-файлов
 */
public class Excel_Importer {

    public static HashMap<String, String> importInjury() {

        HashMap<String, String> injury_map = new HashMap<>();
        File myFile = new File("C://Users/Alexander//JavaProjects//Ontology_lab_3_4//Ontology_Lab_3//src//resources//InjuryForParsing.xlsx");
        FileInputStream fis;
        XSSFWorkbook myWorkBook = null;
        try {
            fis = new FileInputStream(myFile);
            // Finds the workbook instance for XLSX file
            myWorkBook = new XSSFWorkbook(fis);

        } catch (IOException e) {
            e.printStackTrace();
        }

        // Return first sheet from the XLSX workbook
        XSSFSheet mySheet = myWorkBook.getSheetAt(0);
        Iterator<Row> rowIterator = mySheet.iterator();

        while (rowIterator.hasNext()) {
            Row row = rowIterator.next();
            Iterator<Cell> cellIterator = row.cellIterator();
            cellIterator.next();
            Cell cellInjury = row.getCell(0);
            String injury = cellInjury.getStringCellValue();

            // Traversing over each row of XLSX file
            while (cellIterator.hasNext()) {

                Cell cellElement = cellIterator.next();

                String element = cellElement.getStringCellValue();

                injury_map.put(injury, element);

            }
        }
        return injury_map;
    }
}


