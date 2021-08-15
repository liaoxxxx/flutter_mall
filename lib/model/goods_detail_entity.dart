import 'package:mall/constant/app_strings.dart';

class GoodsDetailEntity {
	List<GoodsDetailSpecificationlist> specificationList;
	List<Null> groupon;
	List<GoodsDetailIssue> issue;
	int userHasCollect;
	String shareImage;
	GoodsDetailComment comment;
	bool share;
	List<GoodsDetailAttribute> attribute;
	GoodsDetailBrand brand;
	List<GoodsDetailProductlist> productList;
	GoodsDetailInfo info;

	GoodsDetailEntity({this.specificationList, this.groupon, this.issue, this.userHasCollect, this.shareImage, this.comment, this.share, this.attribute, this.brand, this.productList, this.info});

	GoodsDetailEntity.fromJson(Map<String, dynamic> json) {
		/*if (json['specificationList'] != null) {
			specificationList = new List<GoodsDetailSpecificationlist>();(json['specificationList'] as List).forEach((v) { specificationList.add(new GoodsDetailSpecificationlist.fromJson(v)); });
		}
		if (json['groupon'] != null) {
			groupon = new List<Null>();
		}
		if (json['issue'] != null) {
			issue = new List<GoodsDetailIssue>();(json['issue'] as List).forEach((v) { issue.add(new GoodsDetailIssue.fromJson(v)); });
		}
		userHasCollect = json['userHasCollect'];
		shareImage = json['shareImage'];
		comment = json['comment'] != null ? new GoodsDetailComment.fromJson(json['comment']) : null;
		share = json['share'];
		if (json['attribute'] != null) {
			attribute = new List<GoodsDetailAttribute>();(json['attribute'] as List).forEach((v) { attribute.add(new GoodsDetailAttribute.fromJson(v)); });
		}
		brand = json['brand'] != null ? new GoodsDetailBrand.fromJson(json['brand']) : null;
		if (json['productList'] != null) {
			productList = new List<GoodsDetailProductlist>();(json['productList'] as List).forEach((v) { productList.add(new GoodsDetailProductlist.fromJson(v)); });
		}*/
		info = json['list'] != null ? new GoodsDetailInfo.fromJson(json['list']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.specificationList != null) {
      data['specificationList'] =  this.specificationList.map((v) => v.toJson()).toList();
    }
		if (this.groupon != null) {
      data['groupon'] =  [];
    }
		if (this.issue != null) {
      data['issue'] =  this.issue.map((v) => v.toJson()).toList();
    }
		data['userHasCollect'] = this.userHasCollect;
		data['shareImage'] = this.shareImage;
		if (this.comment != null) {
      data['comment'] = this.comment.toJson();
    }
		data['share'] = this.share;
		if (this.attribute != null) {
      data['attribute'] =  this.attribute.map((v) => v.toJson()).toList();
    }
		if (this.brand != null) {
      data['brand'] = this.brand.toJson();
    }
		if (this.productList != null) {
      data['productList'] =  this.productList.map((v) => v.toJson()).toList();
    }
		if (this.info != null) {
      data['info'] = this.info.toJson();
    }
		return data;
	}
}

class GoodsDetailSpecificationlist {
	List<GoodsDetailSpecificationlistValuelist> valueList;
	String name;

	GoodsDetailSpecificationlist({this.valueList, this.name});

	GoodsDetailSpecificationlist.fromJson(Map<String, dynamic> json) {
		if (json['valueList'] != null) {
			valueList = new List<GoodsDetailSpecificationlistValuelist>();(json['valueList'] as List).forEach((v) { valueList.add(new GoodsDetailSpecificationlistValuelist.fromJson(v)); });
		}
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.valueList != null) {
      data['valueList'] =  this.valueList.map((v) => v.toJson()).toList();
    }
		data['name'] = this.name;
		return data;
	}
}

class GoodsDetailSpecificationlistValuelist {
	String picUrl;
	bool deleted;
	String addTime;
	int goodsId;
	String specification;
	String updateTime;
	int id;
	String value;

	GoodsDetailSpecificationlistValuelist({this.picUrl, this.deleted, this.addTime, this.goodsId, this.specification, this.updateTime, this.id, this.value});

	GoodsDetailSpecificationlistValuelist.fromJson(Map<String, dynamic> json) {
		picUrl = json['picUrl'];
		deleted = json['deleted'];
		addTime = json['addTime'];
		goodsId = json['goodsId'];
		specification = json['specification'];
		updateTime = json['updateTime'];
		id = json['id'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['picUrl'] = this.picUrl;
		data['deleted'] = this.deleted;
		data['addTime'] = this.addTime;
		data['goodsId'] = this.goodsId;
		data['specification'] = this.specification;
		data['updateTime'] = this.updateTime;
		data['id'] = this.id;
		data['value'] = this.value;
		return data;
	}
}

class GoodsDetailIssue {
	bool deleted;
	String question;
	String answer;
	String addTime;
	String updateTime;
	int id;

	GoodsDetailIssue({this.deleted, this.question, this.answer, this.addTime, this.updateTime, this.id});

	GoodsDetailIssue.fromJson(Map<String, dynamic> json) {
		deleted = json['deleted'];
		question = json['question'];
		answer = json['answer'];
		addTime = json['addTime'];
		updateTime = json['updateTime'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['deleted'] = this.deleted;
		data['question'] = this.question;
		data['answer'] = this.answer;
		data['addTime'] = this.addTime;
		data['updateTime'] = this.updateTime;
		data['id'] = this.id;
		return data;
	}
}

class GoodsDetailComment {
	List<Null> data;
	int count;

	GoodsDetailComment({this.data, this.count});

	GoodsDetailComment.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<Null>();
		}
		count = json['count'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] =  [];
    }
		data['count'] = this.count;
		return data;
	}
}

class GoodsDetailAttribute {
	bool deleted;
	String addTime;
	int goodsId;
	String updateTime;
	int id;
	String attribute;
	String value;

	GoodsDetailAttribute({this.deleted, this.addTime, this.goodsId, this.updateTime, this.id, this.attribute, this.value});

	GoodsDetailAttribute.fromJson(Map<String, dynamic> json) {
		deleted = json['deleted'];
		addTime = json['addTime'];
		goodsId = json['goodsId'];
		updateTime = json['updateTime'];
		id = json['id'];
		attribute = json['attribute'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['deleted'] = this.deleted;
		data['addTime'] = this.addTime;
		data['goodsId'] = this.goodsId;
		data['updateTime'] = this.updateTime;
		data['id'] = this.id;
		data['attribute'] = this.attribute;
		data['value'] = this.value;
		return data;
	}
}

class GoodsDetailBrand {
	double floorPrice;
	String picUrl;
	bool deleted;
	String addTime;
	int sortOrder;
	String name;
	String updateTime;
	int id;
	String desc;

	GoodsDetailBrand({this.floorPrice, this.picUrl, this.deleted, this.addTime, this.sortOrder, this.name, this.updateTime, this.id, this.desc});

	GoodsDetailBrand.fromJson(Map<String, dynamic> json) {
		floorPrice = json['floorPrice'];
		picUrl = json['picUrl'];
		deleted = json['deleted'];
		addTime = json['addTime'];
		sortOrder = json['sortOrder'];
		name = json['name'];
		updateTime = json['updateTime'];
		id = json['id'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['floorPrice'] = this.floorPrice;
		data['picUrl'] = this.picUrl;
		data['deleted'] = this.deleted;
		data['addTime'] = this.addTime;
		data['sortOrder'] = this.sortOrder;
		data['name'] = this.name;
		data['updateTime'] = this.updateTime;
		data['id'] = this.id;
		data['desc'] = this.desc;
		return data;
	}
}

class GoodsDetailProductlist {
	int number;
	bool deleted;
	String addTime;
	int goodsId;
	double price;
	String updateTime;
	int id;
	List<String> specifications;
	String url;

	GoodsDetailProductlist({this.number, this.deleted, this.addTime, this.goodsId, this.price, this.updateTime, this.id, this.specifications, this.url});

	GoodsDetailProductlist.fromJson(Map<String, dynamic> json) {
		number = json['number'];
		deleted = json['deleted'];
		addTime = json['addTime'];
		goodsId = json['goodsId'];
		price = json['price'];
		updateTime = json['updateTime'];
		id = json['id'];
		specifications = json['specifications']?.cast<String>();
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['number'] = this.number;
		data['deleted'] = this.deleted;
		data['addTime'] = this.addTime;
		data['goodsId'] = this.goodsId;
		data['price'] = this.price;
		data['updateTime'] = this.updateTime;
		data['id'] = this.id;
		data['specifications'] = this.specifications;
		data['url'] = this.url;
		return data;
	}
}

class GoodsDetailInfo {
	String brief;
	String keywords;
	String addTime;
	String goodsSn;
	String updateTime;
	bool isNew;
	String picUrl;
	String unit;
	bool deleted;
	int brandId;
	int sortOrder;
	String name;
	String shareUrl;
	double counterPrice;
	int id;
	String detail;
	bool isOnSale;
	double retailPrice;
	int categoryId;
	List<String> gallery;
	bool isHot;

	GoodsDetailInfo({this.brief, this.keywords, this.addTime, this.goodsSn, this.updateTime, this.isNew, this.picUrl, this.unit, this.deleted, this.brandId, this.sortOrder, this.name, this.shareUrl, this.counterPrice, this.id, this.detail, this.isOnSale, this.retailPrice, this.categoryId, this.gallery, this.isHot});

	GoodsDetailInfo.fromJson(Map<String, dynamic> json) {
		brief = json['desc'];
		//keywords = json['keywords'];
		addTime = json['created_at'];
		goodsSn = json['goodssn'];
		updateTime = json['updated_at'];
		isNew = json['is_new']==AppStrings.StateOK?true:false;
		picUrl = json['thumb'];
		//unit = json['unit'];
		unit = '件';
		//deleted = json['deleted'];
    deleted = false;
    brandId = json['brand_id'];
    sortOrder = json['r'];
		name = json['title'];
		shareUrl = json['shareUrl'];
		//counterPrice = json['marketprice'];
		id = json['id'];
		detail = json['content'];
		isOnSale = json['state']==AppStrings.StateOK?true:false;
		retailPrice = json['productprice'];
		categoryId = json['cate'];
		//gallery =  json['thumbs']?.cast<String>();
		isHot = json['is_hot'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['brief'] = this.brief;
		data['keywords'] = this.keywords;
		data['addTime'] = this.addTime;
		data['goodsSn'] = this.goodsSn;
		data['updateTime'] = this.updateTime;
		data['isNew'] = this.isNew;
		data['picUrl'] = this.picUrl;
		data['unit'] = this.unit;
		data['deleted'] = this.deleted;
		data['brandId'] = this.brandId;
		data['sortOrder'] = this.sortOrder;
		data['name'] = this.name;
		data['shareUrl'] = this.shareUrl;
		data['counterPrice'] = this.counterPrice;
		data['id'] = this.id;
		data['detail'] = this.detail;
		data['isOnSale'] = this.isOnSale;
		data['retailPrice'] = this.retailPrice;
		data['categoryId'] = this.categoryId;
		data['gallery'] = this.gallery;
		data['isHot'] = this.isHot;
		return data;
	}
}
