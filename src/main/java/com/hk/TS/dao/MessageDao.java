package com.hk.TS.dao;

import com.hk.TS.pojo.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Map;

public interface MessageDao {
    Message getById(Long id);

    Boolean insert(Message message);

    Boolean deleteById(Long id);

    Boolean update(Message message);

    List<Message> getMessages(@Param("offset") int offset, @Param("size") int size);
}
