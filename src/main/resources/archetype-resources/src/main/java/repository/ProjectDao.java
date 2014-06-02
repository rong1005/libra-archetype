#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import ${package}.entity.Project;

/**
 * 项目管理的数据访问接口.
 * @author Libra
 *
 */
public interface ProjectDao extends PagingAndSortingRepository<Project, Long>, JpaSpecificationExecutor<Project> {

	
}
