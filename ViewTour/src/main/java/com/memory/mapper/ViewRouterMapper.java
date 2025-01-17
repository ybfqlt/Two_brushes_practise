package com.memory.mapper;

import com.memory.pojo.ViewRouter;
import org.apache.ibatis.annotations.Param;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ViewRouterMapper {

    //增加一条旅游路线
    int insert(ViewRouter viewRouter);

    //删除指定的景点的某条旅游路线
    int delete(int routerId);

    //删除指定的景点的所有旅游路线
    int   deleteAll(int viewId);

//    //修改某个景点的一条旅游路线
//    int update(ViewRouter viewRouter);

    //查询某个景点的所有旅游路线
    List<ViewRouter>  findByViewId(int viewId);

    /**
     * 更新
     * @param viewRouter
     * @return
     */
    int update(ViewRouter viewRouter);

    /**
     * 根据路线id返回路线信息
     * @param routerId
     * @return
     */
    ViewRouter findByRouterId(Integer routerId);
}
