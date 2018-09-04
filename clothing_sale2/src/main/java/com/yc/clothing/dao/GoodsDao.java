package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Page;

@Repository
public interface GoodsDao {
	//按上架时间排序
	List<Goods> OrderByTime();
	/**
	 * 根据商品id查询商品信息
	 * @param goods 商品对象
	 * @return 返回存有商品信息的商品对象
	 */
	public Goods selectGoodInfoById(Goods goods);
	//根据gid查询size_color表中的一类商品
	public List<Map<String,Object>> selectGoodInfoByName(Integer gid);
	//根据颜色和尺寸查询一个商品
	public Map<String,Object> selectCountByColorAndSize(String color, String size, String name);
	//根据sid查询所有商品的数量
	List<Map<String,Object>> selectBySid(int sid);
	//根据sid查询所有商品的数量
	int countAll();
	//查询所有商品
	List<Map<String,Object>> selectAll(@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据名字模糊查询所有商品
	List<Map<String,Object>> selectAllByFuzzy(@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据父类型查询所有商品
	List<Map<String,Object>> AllGoodsByParentid(@Param("id")int id,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据父类型和名字模糊查询所有商品
	List<Map<String,Object>> AllGoodsByParentidFuzzy(@Param("id")int id,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据类型查询所有商品
	List<Map<String,Object>> AllGoodsByBoardid(@Param("id")int id,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据类型和名字模糊查询所有商品
	List<Map<String,Object>> AllGoodsByBoardidFuzzy(@Param("id")int id,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//所有商品按名字顺序查询
	List<Map<String,Object>> AllGoodsOrderByName(@Param("min")int minPrice,@Param("max")int maxPrice);
	//所有商品按名字模糊查询后顺序排序
	List<Map<String,Object>> AllGoodsOrderByNameFuzzy(@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据父类型和按名字顺序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByName(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据父类型和按名字顺序模糊查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByNameFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据类型和按名字顺序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByName(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据类型和按名字模糊顺序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByNameFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//所有商品按名字降序查询
	List<Map<String,Object>> AllGoodsOrderByNameDesc(@Param("min")int minPrice,@Param("max")int maxPrice);
	//所有商品按名字模糊降序查询
	List<Map<String,Object>> AllGoodsOrderByNameDescFuzzy(@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据父类型且按名字降序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByNameDesc(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据父类型且按名字降序模糊查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByNameDescFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据类型且按名字降序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByNameDesc(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据类型且按名字降序模糊查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByNameDescFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//所有商品按价格顺序查询
	List<Map<String,Object>> AllGoodsOrderByPrice(@Param("min")int minPrice,@Param("max")int maxPrice);
	//所有商品按名字模糊查询按价格顺序查询
	List<Map<String,Object>> AllGoodsOrderByPriceFuzzy(@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据父类型和按价格顺序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByPrice(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据父类型和名字模糊查询并按价格顺序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByPriceFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据类型和按价格顺序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByPrice(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据类型和按名字模糊查询且按价格顺序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByPriceFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//所有商品按名字降序查询
	List<Map<String,Object>> AllGoodsOrderByPriceDesc(@Param("min")int minPrice,@Param("max")int maxPrice);
	//所有商品按名字降序模糊查询
	List<Map<String,Object>> AllGoodsOrderByPriceDescFuzzy(@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据父类型和按价格降序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByPriceDesc(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据父类型和名字模糊查询且按价格降序查询商品
	List<Map<String,Object>> findGoodsByParentidOrderByPriceDescFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//根据类型和按价格降序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByPriceDesc(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice);
	//根据类型和名字模糊查询且价格降序查询商品
	List<Map<String,Object>> findGoodsByBoardidOrderByPriceDescFuzzy(@Param("id")int bid,@Param("min")int minPrice,@Param("max")int maxPrice,@Param("name")String name);
	//按模糊查询商品
	List<Goods> fuzzySearchGoods(String name);
	//查询相关商品
	@Select("select * from cs_goods where bid=#{bid}")
	List<Goods> selectLikeGoods(Goods goods);
}
