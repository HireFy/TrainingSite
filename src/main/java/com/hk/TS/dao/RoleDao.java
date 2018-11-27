package com.hk.TS.dao;

import com.hk.TS.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleDao {
    Role getById(Long id);

    Boolean insert(Role role);

    Boolean deleteById(Long id);

    Boolean update(Role role);

    List<Role> getRoles(@Param("offset") int offset, @Param("size") int pageSize);
}
