package com.douzone.framework.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.douzone.framework.vo.pagevo;
import com.douzone.framework.vo.popup;

@Controller
public class MainController {
	
	pagevo vo = new pagevo();
	popup setting = new popup();
	
	@RequestMapping({"/", "/tutorial"})
	public String tutorial() {
		return "tutorial_index";
	}
	
	@RequestMapping("/tutorial_exam")
	public String tutorial_exam() {
		return "tutorial_exam";
	}
	@RequestMapping("/tutorial_scenario")
	public String tutorial_scenario() {
		return "tutorial_scenario";
	}
	
	@RequestMapping("/input")
	public String input() {
		return "tutorial_input";
	}
	@RequestMapping("/numberinput")
	public String numberinput() {
		return "tutorial_numberinput";
	}
	@RequestMapping("/textareainput")
	public String textareainput() {
		return "tutorial_textareainput";
	}
	@RequestMapping("/picker")
	public String picker() {
		return "tutorial_picker";
	}
	@RequestMapping("/datepicker")
	public String datepicker() {
		return "tutorial_datepicker";
	}
	@RequestMapping("/periodpicker")
	public String periodpicker() {
		return "tutorial_periodpicker";
	}
	
	@RequestMapping("/button")
	public String button() {
		return "tutorial_button";
	}
	@RequestMapping("/radiobutton")
	public String radiobutton() {
		return "tutorial_radiobutton";
	}
	@RequestMapping("/togglebutton")
	public String togglebutton() {
		return "tutorial_togglebutton";
	}
	
	@RequestMapping("/cardlist")
	public String cardlist() {
		return "tutorial_cardlist";
	}
	@RequestMapping("/linechart")
	public String linechart() {
		return "tutorial_linechart";
	}
	@RequestMapping("/radarchart")
	public String radarchart() {
		return "tutorial_radarchart";
	}
	@RequestMapping("/barchart")
	public String barchart() {
		return "tutorial_barchart";
	}
	@RequestMapping("/chart")
	public String chart() {
		return "tutorial_chart";
	}
	
	@RequestMapping("/layout")
	public String layout() {
		return "tutorial_layout";
	}
	@RequestMapping("/footer")
	public String footer() {
		return "tutorial_footer";
	}
	@RequestMapping("/header")
	public String header() {
		return "tutorial_header";
	}
	@RequestMapping("/navigator")
	public String subtopic() {
		return "tutorial_subtopic";
	}
	@RequestMapping("/checkbox")
	public String checkbox() {
		return "tutorial_checkbox";
	}
	@RequestMapping("/rangeslider")
	public String rangeslider() {
		return "tutorial_rangeslider";
	}
	@RequestMapping("/accordion")
	public String accordion() {
		return "tutorial_accordion";
	}
	@RequestMapping("/datatable")
	public String datatable() {
		return "tutorial_datatable";
	}
	@RequestMapping("/messagebox")
	public String messagebox() {
		return "tutorial_messagebox";
	}
	@RequestMapping("/staticbutton")
	public String staticbutton() {
		return "tutorial_staticbutton";
	}
	@RequestMapping("/imageview")
	public String imageview() {
		return "tutorial_imageview";
	}
	@RequestMapping("/statusview")
	public String statusview() {
		return "tutorial_statusview";
	}
	@RequestMapping("/iconloader")
	public String iconloader() {
		return "tutorial_iconloader";
	}
	@RequestMapping("/test")
	public String test() {
		return "tutorial_test";
	}
	
	@ResponseBody
	@RequestMapping(value="/ajax_test", method=RequestMethod.POST)
	public String test(@RequestParam HashMap<String, String> data, HttpServletRequest request) {
		vo.setHtml(data.get("html"));
		vo.setCss(data.get("css"));
		vo.setJs(data.get("js"));
		
//		System.out.println(request.getSession().getServletContext().getResourcePaths("/WEB-INF/views/popup"));
	
//		File file = new File("C://Users//YSW//Desktop//popup//test.html");
		File file = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/views/popup/popup.jsp"));
		
		try {
			FileWriter fw = new FileWriter(file);
			fw.write(setting.Setting(vo.getHtml(), vo.getCss(), vo.getJs()));
			fw.close();
		} catch(IOException e) {
			e.printStackTrace();
		}
		return vo.toString();
	}

	
	// hollydays api
	@ResponseBody
	   @RequestMapping(value="/api/hollydays/{year}/{month}", method=RequestMethod.GET )
	   public String hollydays(@PathVariable String year, @PathVariable String month) {
	      System.out.println("year : " + year + ", month : " + month);
	      String result = "";
	      try{
	         while(true){
	            // parsing할 url 지정(API 키 포함해서)
	            String url = "http://apis.data.go.kr/B090041/openapi/service/SpcdeInfoService/getHoliDeInfo?ServiceKey=";
	            String serviceKey = "UBwvSOzIBNMzxSshLPsSxQ%2FKseq2QLt5Q4Q2caFwf6XEoNlwPV%2Fig5TwyBviHGd6Jt22HpvM3pA5%2FIQOdmsO7w%3D%3D";
	            String solYear = "&solYear=" + year;
	            String solMonth = "&solMonth=" + month;
	            url += serviceKey + solYear + solMonth;
	            
	            DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
	            DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
	            Document doc = dBuilder.parse(url);
	            
	            // root tag 
	            doc.getDocumentElement().normalize();
	            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
	            
	            // 파싱할 tag
	            NodeList nList = doc.getElementsByTagName("item");
	            //System.out.println("파싱할 리스트 수 : "+ nList.getLength());
	            
	            for(int temp = 0; temp < nList.getLength(); temp++){
	               Node nNode = nList.item(temp);
	               if(nNode.getNodeType() == Node.ELEMENT_NODE){
	                  Element eElement = (Element) nNode;
//	                  System.out.println("######################");
//	                  System.out.println(eElement.getTextContent());
//	                  System.out.println("dateName  : " + getTagValue("dateName", eElement));
	                  System.out.println("isHoliday  : " + getTagValue("isHoliday", eElement));
//	                  System.out.println("locdate : " + getTagValue("locdate", eElement));
	                  if(getTagValue("isHoliday", eElement).equals("Y")) 
	                     result += getTagValue("dateName", eElement) + ',' + getTagValue("locdate", eElement) + "/";
	               }   // for end
	            }   // if end
	            break;
	         }   // while end
	         
	      } catch (Exception e){   
	         e.printStackTrace();
	      }   // try~catch end
	      System.out.println(result);
	      
	      return result;
	   }
	      
	   //tag값의 정보를 가져오는 메소드
	   public String getTagValue(String tag, Element eElement) {
	       NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	       Node nValue = (Node) nlList.item(0);
	       if(nValue == null) 
	           return null;
	       return nValue.getNodeValue();
	   }
	
}