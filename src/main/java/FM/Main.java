package FM;

import java.awt.Font;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class Main {

	public static void main(String[] args) throws FileNotFoundException, DocumentException {

    }
    
    public static void crearPDF(List<Producto> lista) throws FileNotFoundException, DocumentException {
        // Se crea el documento
        Document documento = new Document();
        
        // El OutPutStream para el fichero donde crearemos el PDF
        FileOutputStream ficheroPDF = new FileOutputStream("Personas.pdf");
        
        // Se asocia el documento de OutPutStream
        PdfWriter.getInstance(documento, ficheroPDF);
        
        // Se abre el documento
        documento.open();
        
        // Parrafo
        Paragraph titulo = new Paragraph("Lista de personas \n\n",
                FontFactory.getFont("arial",
                        22,
                        Font.BOLD,
                        BaseColor.BLUE
                        )
        );
        
        // Añadimos el titulo al documento
        documento.add(titulo);
        
        // Creamos una tabla
        PdfPTable tabla = new PdfPTable(3);
        tabla.addCell("ID");
        tabla.addCell("NOMBRE");
        tabla.addCell("TELEFONO");
        
        for(int i = 0 ; i < lista.size() ; i++) {
            tabla.addCell("" + i);
            tabla.addCell(lista.get(i).getNombre());
            tabla.addCell(String.valueOf(lista.get(i).getPrecio()));
        }
        
        // Añadimos la tabla al documento
        documento.add(tabla);
        
        // Se cierra el documento
        documento.close();
    }
    
}
