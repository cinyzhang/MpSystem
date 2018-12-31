package cn.edu.hist.mapper;

import cn.edu.hist.model.Basicinfo;
import cn.edu.hist.model.BasicinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BasicinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int countByExample(BasicinfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int deleteByExample(BasicinfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int insert(Basicinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int insertSelective(Basicinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    List<Basicinfo> selectByExample(BasicinfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    Basicinfo selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Basicinfo record, @Param("example") BasicinfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Basicinfo record, @Param("example") BasicinfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Basicinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table basicinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Basicinfo record);
}