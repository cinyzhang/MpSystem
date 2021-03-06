package cn.edu.hist.mapper;

import cn.edu.hist.model.Yycgdmx;
import cn.edu.hist.model.YycgdmxExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YycgdmxMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int countByExample(YycgdmxExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int deleteByExample(YycgdmxExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int insert(Yycgdmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int insertSelective(Yycgdmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    List<Yycgdmx> selectByExample(YycgdmxExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    Yycgdmx selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Yycgdmx record, @Param("example") YycgdmxExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Yycgdmx record, @Param("example") YycgdmxExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Yycgdmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yycgdmx
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Yycgdmx record);
}