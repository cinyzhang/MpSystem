package cn.edu.hist.mapper;

import cn.edu.hist.model.Useryy;
import cn.edu.hist.model.UseryyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UseryyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int countByExample(UseryyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int deleteByExample(UseryyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int insert(Useryy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int insertSelective(Useryy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    List<Useryy> selectByExample(UseryyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    Useryy selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Useryy record, @Param("example") UseryyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Useryy record, @Param("example") UseryyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Useryy record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table useryy
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Useryy record);
}