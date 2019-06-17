package com.douzone.framework.vo;

public class pagevo {
	private String html;
	private String css;
	private String js;
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
	public String getCss() {
		return css;
	}
	public void setCss(String css) {
		this.css = css;
	}
	public String getJs() {
		return js;
	}
	public void setJs(String js) {
		this.js = js;
	}
	@Override
	public String toString() {
		return "pageDao [html=" + html + ", css=" + css + ", js=" + js + "]";
	} 
	
	
}
