package com.hk.TS.pojo;
import lombok.Data;
import java.sql.Timestamp;

@Data
public class Comment {
    private Long id;
    private String content;
    private Course courseId;
    private Person authorId;
    private Long targetCommentID;
    private Timestamp createTime;
    private Long like;

    public Comment(Long id,String content,Course courseId,Person authorId,Long targetCommentID,Timestamp createTime,Long like){
        this.id = id;
        this.content = content;
        this.courseId = courseId;
        this.authorId = authorId;
        this.targetCommentID = targetCommentID;
        this.createTime = createTime;
        this.like = like;

    }
//（评论点赞量）
    public Comment(Long like){
        this.like = like;

    }

    public Comment(String content,Course courseId,Person authorId,Long targetCommentID){
        this.content = content;
        this.courseId = courseId;
        this.authorId = authorId;
        this.targetCommentID = targetCommentID;
    }
}
