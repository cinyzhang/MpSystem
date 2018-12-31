package cn.edu.hist.mapper;

import cn.edu.hist.model.Yppmbackup;
import cn.edu.hist.model.YppmbackupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YppmbackupMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int countByExample(YppmbackupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int deleteByExample(YppmbackupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int insert(Yppmbackup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int insertSelective(Yppmbackup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    List<Yppmbackup> selectByExample(YppmbackupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    Yppmbackup selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Yppmbackup record, @Param("example") YppmbackupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Yppmbackup record, @Param("example") YppmbackupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Yppmbackup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yppmbackup
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Yppmbackup record);
}