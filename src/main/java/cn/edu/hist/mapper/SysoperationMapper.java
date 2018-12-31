package cn.edu.hist.mapper;

import cn.edu.hist.model.Sysoperation;
import cn.edu.hist.model.SysoperationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysoperationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int countByExample(SysoperationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int deleteByExample(SysoperationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String operateid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int insert(Sysoperation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int insertSelective(Sysoperation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    List<Sysoperation> selectByExample(SysoperationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    Sysoperation selectByPrimaryKey(String operateid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Sysoperation record, @Param("example") SysoperationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Sysoperation record, @Param("example") SysoperationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Sysoperation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysoperation
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Sysoperation record);
}