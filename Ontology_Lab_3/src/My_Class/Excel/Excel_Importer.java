package My_Class.Excel;

import My_Class.Ontology_Name.Type_Equipment;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 * Класс для импорта данных из xlsx-файлов
 */
public class Excel_Importer {

    public static HashMap<String, String> importInjury(String Path_File) {

        HashMap<String, String> injury_map = new HashMap<>();
        File myFile = new File(Path_File);
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
                break;
            }
        }
        return injury_map;
    }

    /**
     * Преобразовать строку в массив enum
     * @param str
     * @return
     */
    public static ArrayList<Type_Equipment.Type_Class> get_type(String str){
        ArrayList<Type_Equipment.Type_Class> ret = new ArrayList<>();

        String[] list_str = str.split(",");

        for (String it : list_str){
            ret.add(Type_Equipment.get_type_class(it));
        }

        return ret;
    }
}


