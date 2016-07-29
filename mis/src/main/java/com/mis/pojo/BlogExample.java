package com.mis.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class BlogExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BlogExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSenderidIsNull() {
            addCriterion("senderid is null");
            return (Criteria) this;
        }

        public Criteria andSenderidIsNotNull() {
            addCriterion("senderid is not null");
            return (Criteria) this;
        }

        public Criteria andSenderidEqualTo(String value) {
            addCriterion("senderid =", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidNotEqualTo(String value) {
            addCriterion("senderid <>", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidGreaterThan(String value) {
            addCriterion("senderid >", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidGreaterThanOrEqualTo(String value) {
            addCriterion("senderid >=", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidLessThan(String value) {
            addCriterion("senderid <", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidLessThanOrEqualTo(String value) {
            addCriterion("senderid <=", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidLike(String value) {
            addCriterion("senderid like", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidNotLike(String value) {
            addCriterion("senderid not like", value, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidIn(List<String> values) {
            addCriterion("senderid in", values, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidNotIn(List<String> values) {
            addCriterion("senderid not in", values, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidBetween(String value1, String value2) {
            addCriterion("senderid between", value1, value2, "senderid");
            return (Criteria) this;
        }

        public Criteria andSenderidNotBetween(String value1, String value2) {
            addCriterion("senderid not between", value1, value2, "senderid");
            return (Criteria) this;
        }

        public Criteria andReciveridIsNull() {
            addCriterion("reciverid is null");
            return (Criteria) this;
        }

        public Criteria andReciveridIsNotNull() {
            addCriterion("reciverid is not null");
            return (Criteria) this;
        }

        public Criteria andReciveridEqualTo(String value) {
            addCriterion("reciverid =", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridNotEqualTo(String value) {
            addCriterion("reciverid <>", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridGreaterThan(String value) {
            addCriterion("reciverid >", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridGreaterThanOrEqualTo(String value) {
            addCriterion("reciverid >=", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridLessThan(String value) {
            addCriterion("reciverid <", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridLessThanOrEqualTo(String value) {
            addCriterion("reciverid <=", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridLike(String value) {
            addCriterion("reciverid like", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridNotLike(String value) {
            addCriterion("reciverid not like", value, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridIn(List<String> values) {
            addCriterion("reciverid in", values, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridNotIn(List<String> values) {
            addCriterion("reciverid not in", values, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridBetween(String value1, String value2) {
            addCriterion("reciverid between", value1, value2, "reciverid");
            return (Criteria) this;
        }

        public Criteria andReciveridNotBetween(String value1, String value2) {
            addCriterion("reciverid not between", value1, value2, "reciverid");
            return (Criteria) this;
        }

        public Criteria andSendcontentIsNull() {
            addCriterion("sendcontent is null");
            return (Criteria) this;
        }

        public Criteria andSendcontentIsNotNull() {
            addCriterion("sendcontent is not null");
            return (Criteria) this;
        }

        public Criteria andSendcontentEqualTo(String value) {
            addCriterion("sendcontent =", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentNotEqualTo(String value) {
            addCriterion("sendcontent <>", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentGreaterThan(String value) {
            addCriterion("sendcontent >", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentGreaterThanOrEqualTo(String value) {
            addCriterion("sendcontent >=", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentLessThan(String value) {
            addCriterion("sendcontent <", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentLessThanOrEqualTo(String value) {
            addCriterion("sendcontent <=", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentLike(String value) {
            addCriterion("sendcontent like", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentNotLike(String value) {
            addCriterion("sendcontent not like", value, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentIn(List<String> values) {
            addCriterion("sendcontent in", values, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentNotIn(List<String> values) {
            addCriterion("sendcontent not in", values, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentBetween(String value1, String value2) {
            addCriterion("sendcontent between", value1, value2, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSendcontentNotBetween(String value1, String value2) {
            addCriterion("sendcontent not between", value1, value2, "sendcontent");
            return (Criteria) this;
        }

        public Criteria andSenddateIsNull() {
            addCriterion("senddate is null");
            return (Criteria) this;
        }

        public Criteria andSenddateIsNotNull() {
            addCriterion("senddate is not null");
            return (Criteria) this;
        }

        public Criteria andSenddateEqualTo(Date value) {
            addCriterionForJDBCDate("senddate =", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateNotEqualTo(Date value) {
            addCriterionForJDBCDate("senddate <>", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateGreaterThan(Date value) {
            addCriterionForJDBCDate("senddate >", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("senddate >=", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateLessThan(Date value) {
            addCriterionForJDBCDate("senddate <", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("senddate <=", value, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateIn(List<Date> values) {
            addCriterionForJDBCDate("senddate in", values, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateNotIn(List<Date> values) {
            addCriterionForJDBCDate("senddate not in", values, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("senddate between", value1, value2, "senddate");
            return (Criteria) this;
        }

        public Criteria andSenddateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("senddate not between", value1, value2, "senddate");
            return (Criteria) this;
        }

        public Criteria andPicpathIsNull() {
            addCriterion("picpath is null");
            return (Criteria) this;
        }

        public Criteria andPicpathIsNotNull() {
            addCriterion("picpath is not null");
            return (Criteria) this;
        }

        public Criteria andPicpathEqualTo(String value) {
            addCriterion("picpath =", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathNotEqualTo(String value) {
            addCriterion("picpath <>", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathGreaterThan(String value) {
            addCriterion("picpath >", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathGreaterThanOrEqualTo(String value) {
            addCriterion("picpath >=", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathLessThan(String value) {
            addCriterion("picpath <", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathLessThanOrEqualTo(String value) {
            addCriterion("picpath <=", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathLike(String value) {
            addCriterion("picpath like", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathNotLike(String value) {
            addCriterion("picpath not like", value, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathIn(List<String> values) {
            addCriterion("picpath in", values, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathNotIn(List<String> values) {
            addCriterion("picpath not in", values, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathBetween(String value1, String value2) {
            addCriterion("picpath between", value1, value2, "picpath");
            return (Criteria) this;
        }

        public Criteria andPicpathNotBetween(String value1, String value2) {
            addCriterion("picpath not between", value1, value2, "picpath");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}