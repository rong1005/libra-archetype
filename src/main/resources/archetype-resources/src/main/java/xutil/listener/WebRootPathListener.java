package ${package}.xutil.listener;

import javax.servlet.ServletContextEvent;

import org.springframework.web.context.ContextLoaderListener;

/**
 * 获得项目的物理路径.
 * @author Libra
 *
 */
public class WebRootPathListener extends ContextLoaderListener {
	
	public void contextDestroyed(ServletContextEvent sce) {  
		  
    }
    
	/** 将取得的物理地址放入web.xml 的 simple.path */
    public void contextInitialized(ServletContextEvent sce) {  
        String webRootPath = sce.getServletContext().getRealPath("/");  
        System.setProperty("${artifactId}.path" , webRootPath);  
    } 

}