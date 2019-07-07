<%@ page import="com.javadw.model.*"%>
<div>
	<%
	ExampleLink selectedLink =(ExampleLink)session.getAttribute("selectedLink");
%>
<hr class="style-light">
	<table
		style="width: 100%; border-bottom: 0px dotted #fafafa; border-top: 0px dotted #fafafa; background: #fff;">
		<tr style="">
			<%if(selectedLink!=null){%>

			<td style="text-align: left; width: 25px;">
				<%if( selectedLink.getPrevLink()!=null){%><img
				src="images/icon/arrow-left-icon.png" alt="Java document World"
				height="20px;"> <%}%>
			</td>
			<td style="text-align: left; padding: 5px;">
				<%if( selectedLink.getPrevLink()!=null){%><a
				style="text-decoration: none;"
				href='<%=selectedLink.getPrevLink().getLink()%>'><span
					id="nav-font1"> PREVIOUS PAGE </span><br /> <span id="nav-font2"><%=selectedLink.getPrevLink().getName()%></span></a>
				<%}%>
			</td>


			<td style="text-align: right; padding: 5px;">
				<%if(selectedLink.getNextLink()!=null){%><a
				style="text-decoration: none;"
				href='<%=selectedLink.getNextLink().getLink()%>'><span
					id="nav-font1"> NEXT PAGE</span>&nbsp;<br /> <span id="nav-font2"><%=selectedLink.getNextLink().getName()%></span></a>
				<%}%>
			</td>
			<td style="text-align: right;width: 25px;">
				<%if(selectedLink.getNextLink()!=null){%><img
				src="images/icon/arrow-right-icon.png" alt="Java document World"
				height="20px;">
				<%}%>
			</td>

			<%}%>
		</tr>
	</table>
<hr class="style-light">
</div>

