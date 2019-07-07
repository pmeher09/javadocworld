<!DOCTYPE html>
<html>
<head>
<title>Read RTF File Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="RTF File Java Example" />
<meta name="keywords"
	content="RTF, .rtf, read a rtf file in java,how to read a rtf file">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
						<div id="code-question">
						<h1> How to read a RTF file in Java</h1>
						
						</div>
<pre class="prettyprint" id="div-code">

import java.awt.BorderLayout;
import java.awt.Color;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.swing.JEditorPane;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.text.BadLocationException;
import javax.swing.text.rtf.RTFEditorKit;

public class ReadFileExampleRTF {

	public static void main(String args[]) {
		RTFReader rtfReader = new RTFReader();
		rtfReader.read("C://sampleRTF.rtf");
		rtfReader.setVisible(true);
	}
}

class RTFReader extends JFrame {
	
	public RTFReader() {
		setTitle("RTF File");
		setSize(500, 300);
		setBackground(Color.WHITE);
		getContentPane().setLayout(new BorderLayout());
	}

	public void read(String path) {
		JPanel topPanel = new JPanel();
		topPanel.setLayout(new BorderLayout());
		getContentPane().add(topPanel, BorderLayout.CENTER);

		// Create an RTF editor window
		RTFEditorKit rtfEditor = new RTFEditorKit();
		JEditorPane editor = new JEditorPane();
		editor.setEditorKit(rtfEditor);
		editor.setBackground(Color.white);

		// Add a scroll pane
		JScrollPane scroller = new JScrollPane();
		scroller.getViewport().add(editor);
		topPanel.add(scroller, BorderLayout.CENTER);

		try {
			// Read the rtf File
			FileInputStream fileInputStream = new FileInputStream(path);
			rtfEditor.read(fileInputStream, editor.getDocument(), 0);

			System.out.println(editor.getDocument());
			System.out.println(rtfEditor.toString());

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (BadLocationException e) {
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
<jsp:include page="suggestionProgramList3.jsp" />
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
