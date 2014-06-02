package ${package}.xutil.jms;

import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * 消息的异步被动接收者.
 * 
 * 使用Spring的MessageListenerContainer侦听消息并调用本Listener进行处理.
 * 
 */
public class NotifyMessageListener implements MessageListener {

	private static Logger logger = LoggerFactory.getLogger(NotifyMessageListener.class);

	
	/**
	 * MessageListener回调函数.
	 */
	@Override
	public void onMessage(Message message) {
		try {
			MapMessage mapMessage = (MapMessage) message;
			// 打印消息详情
			logger.info("UserName:{}, Email:{}", mapMessage.getString("userName"), mapMessage.getString("email"));

			System.out.println("-----打印JMS信息---------------"+mapMessage.getString("userName"));
			
		} catch (Exception e) {
			logger.error("处理消息时发生异常.", e);
		}
	}
}
