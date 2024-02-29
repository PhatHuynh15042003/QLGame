package asm.group4.steam.service;

import java.awt.Color;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import asm.group4.steam.model.TransactionHistory;
import jakarta.servlet.http.HttpServletResponse;
 
 
public class TransactionPDFExporter {
    private List<TransactionHistory> listTransactionHistories;
     
    public TransactionPDFExporter(List<TransactionHistory> listTransactionHistories) {
        this.listTransactionHistories = listTransactionHistories;
    }
 
    private void writeTableHeader(PdfPTable table) {
        PdfPCell cell = new PdfPCell();
        cell.setPadding(6);
         
        Font font = FontFactory.getFont(FontFactory.HELVETICA);
         
        cell.setPhrase(new Phrase("Transaction ID", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Transaction Date", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Money", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Id Account", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Name Game", font));
        table.addCell(cell); 
        cell.setPhrase(new Phrase("KeyCode", font));
        table.addCell(cell);       
    }
     
    private void writeTableData(PdfPTable table) {
    	DecimalFormat formatter = new DecimalFormat ("###,###");
		
        for (TransactionHistory transaction: listTransactionHistories) {
        	String moneyformat = formatter.format(transaction.getMoney_transaction());
            table.addCell(String.valueOf(transaction.getId_transaction()));
            table.addCell(String.valueOf(transaction.getDate_transaction()));
            table.addCell(String.valueOf(moneyformat) + "đ");
            table.addCell(String.valueOf(transaction.getAccount().getId_account()));
            table.addCell(String.valueOf(transaction.getGame().getName_game()));
            table.addCell(String.valueOf(transaction.getKeycode().getVerification_keyCode()));
        }
    }
     
    public void export(HttpServletResponse response) throws DocumentException, IOException {
        Document document = new Document(PageSize.A4);
        PdfWriter.getInstance(document, response.getOutputStream());
         
        document.open();
        Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
        font.setSize(18);
        font.setColor(0,0,255);
         
        Paragraph p = new Paragraph("Bill Steam", font);
        p.setAlignment(Paragraph.ALIGN_CENTER);
        document.add(p);
         
        PdfPTable table = new PdfPTable(6);
        table.setWidthPercentage(100f);
        table.setWidths(new float[] {1.5f, 2.5f, 2.5f, 2.5f, 1.5f, 2.0f});
        table.setSpacingBefore(10);
         
        writeTableHeader(table);
        writeTableData(table);
         
        document.add(table);
         
        document.close();
         
    }
}
