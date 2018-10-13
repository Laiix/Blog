package top.eussi.dao;


import top.eussi.dao.domain.Page;

import java.io.Serializable;
import java.util.List;

/**
 * DAO基类，其它DAO可以直接继承这个DAO
 */
public interface BaseDao<T> {

	/**
	 * 根据ID获取PO实例
	 * 
	 * @param id
	 * @return 返回相应的持久化PO实例
	 */
	public T get(Serializable id);

	/**
	 * 获取PO的所有对象
	 * 
	 * @return
	 */
	public List<T> getAll();
	
	/**
	 * 保存PO
	 * 
	 * @param entity
	 */
	public void add(T entity);

	/**
	 * 删除PO
	 * 
	 * @param entity
	 */
	public void delete(T entity);

	/**
	 * 更改PO
	 * 
	 * @param entity
	 */
	public void update(T entity);

}
