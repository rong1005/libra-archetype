package ${package}.xutil.jms;

import java.util.HashMap;
import java.util.Map;

import javax.jms.Destination;

import org.springframework.jms.core.JmsTemplate;

import ${package}.entity.User;


/**
 * JMS用户变更消息生产者.
 * 
 * 使用jmsTemplate将用户变更消息分别发送到queue与topic.
 * 
 */
public class NotifyMessageProducer {

	private JmsTemplate jmsTemplate;
	private Destination notifyQueue;
	private Destination notifyTopic;

	/** 队列 */
	public void sendQueue(final User user) {
		sendMessage(user, notifyQueue);
	}

	/** 一般规则 */
	public void sendTopic(final User user) {
		sendMessage(user, notifyTopic);
	}

	/**
	 * 使用jmsTemplate最简便的封装convertAndSend()发送Map类型的消息.
	 */
	private void sendMessage(User user, Destination destination) {
		Map map = new HashMap();
		map.put("userName", user.getName());
		map.put("email", user.getEmail());

		jmsTemplate.convertAndSend(destination, map);
	}

	public void setJmsTemplate(JmsTemplate jmsTemplate) {
		this.jmsTemplate = jmsTemplate;
	}

	public void setNotifyQueue(Destination notifyQueue) {
		this.notifyQueue = notifyQueue;
	}

	public void setNotifyTopic(Destination nodifyTopic) {
		this.notifyTopic = nodifyTopic;
	}
}
