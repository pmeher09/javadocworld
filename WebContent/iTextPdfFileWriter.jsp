<!DOCTYPE html>
<html>
<head>
<title> PDF Writer in Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="PDF Writer in java Example" />
<meta name="keywords"
	content="PDF Writer java, PDF, create pdf ">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
			</div>
			<div id="content-right">
				<div id="sub-content-left">
					<jsp:include page="top_add.html" />
					<div id="div-program">
					<jsp:include page="navigation_link.jsp" />
						<div id="code-question"><h1> Write PDF file in Java using iText </h1></div>
						<div id="code-answer">
						<p>You can use the iText Java library to generate PDF documents.  
iText is a freely available Java library.</p><p> You can download the jar file from here: <a target="_blank" href="http://www.java2s.com/Code/Jar/i/Downloaditextpdf510jar.htm">itextpdf510.jar</a><p>

						</div>
<pre class="prettyprint" id="div-code">
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PDFWriterExample {
	public static void main(String args[]) {
		try {
			// Create a instance of Document class
			Document document = new Document();

			// Create a instance of OutputStream class
			OutputStream outputStream = new FileOutputStream(new File(
					"C:\\MyPDFFile.pdf"));

			// Create a instance of PDFWriter class
			PdfWriter.getInstance(document, outputStream);

			// open the document here
			document.open();

			document.add(new Phrase("Phrase1."));
			document.add(new Phrase("Phrase2."));

			// Create Font objects
			Font font = new Font(Font.FontFamily.TIMES_ROMAN, 22, Font.NORMAL
					| Font.BOLD);

			// Apply Font
			document.add(new Paragraph(
					"Test Font Paragraph, font applied here.", font));

			// Create Paragraph objects
			Paragraph paragraph = new Paragraph("Test Paragraph.");
			document.add(paragraph);

			Paragraph paragraphCenterAlign = new Paragraph(
					"Test Paragraph  Alignment applied as center.");

			// Add Space
			paragraphCenterAlign.setSpacingAfter(35);

			// Set spacing, alignment etc on Paragraph2
			paragraphCenterAlign.setSpacingAfter(35);
			paragraphCenterAlign.setSpacingBefore(35);
			paragraphCenterAlign.setAlignment(Element.ALIGN_CENTER);
			paragraphCenterAlign.add(paragraphCenterAlign);

			// Create Table object here having three columns
			PdfPTable pdfPTable = new PdfPTable(3);

			// Create cells
			PdfPCell headerCell1 = new PdfPCell(new Paragraph("Column1"));
			PdfPCell headerCell2 = new PdfPCell(new Paragraph("Column2"));
			PdfPCell headerCell3 = new PdfPCell(new Paragraph("Column3"));
			
			PdfPCell dataCell1 = new PdfPCell(new Paragraph("Data1"));
			PdfPCell dataCell2 = new PdfPCell(new Paragraph("Data2"));
			PdfPCell dataCell3 = new PdfPCell(new Paragraph("Data3"));

			// Now add cells to table
			pdfPTable.addCell(headerCell1);
			pdfPTable.addCell(headerCell2);
			pdfPTable.addCell(headerCell3);
			pdfPTable.addCell(dataCell1);
			pdfPTable.addCell(dataCell2);
			pdfPTable.addCell(dataCell3);

			pdfPTable.setSpacingBefore(20);
			// Add table to the document
			document.add(pdfPTable);

			// Close document and outputStream.
			document.close();
			outputStream.close();

			System.out.println("Pdf File Created Successfully...");
		} catch (Exception e) {
			System.out.println("Error while creating pdf file.");
			e.printStackTrace();

		}
	}
}
</pre>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
</div>
					
					<jsp:include page="contentBottom.jsp" />
					
					<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */
	
								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/iTextPdfFileWriter"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "iTextPdfFileWriter"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d.createElement('script');
	
									s.src = '//javadocworld.disqus.com/embed.js';
	
									s.setAttribute('data-timestamp', +new Date());
									(d.head || d.body).appendChild(s);
								})();
							</script>
						
						</div>
				</div>
				<div id="sub-content-right">
					<jsp:include page="contentRight.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
