package cn.vcity.model;

import java.util.HashSet;
import java.util.Set;



/**
 * VcityQuestionitem generated by MyEclipse - Hibernate Tools
 */

public class VcityQuestionitem  implements java.io.Serializable {


    // Fields    

     private Integer itemId;
     private Integer questionId;
     private String itemDesc;
     private Integer itemIndex;
     private String  flag;
     private VcityQuestion vcityQuestion = new VcityQuestion();
     private Set<VcityQuestionresult> vcityQuestionresult = new HashSet<VcityQuestionresult>();


    // Constructors



	/** default constructor */
    public VcityQuestionitem() {
    }

    
    public VcityQuestionitem(Integer itemId) {
		this.itemId = itemId;
	}


	/** full constructor */
    public VcityQuestionitem(Integer questionId, String itemDesc, Integer ItemIndex) {
        this.questionId = questionId;
        this.itemDesc = itemDesc;
        this.itemIndex = ItemIndex;
    }

   
    // Property accessors

    public Integer getItemId() {
        return this.itemId;
    }
    
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getQuestionId() {
        return this.questionId;
    }
    
    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getItemDesc() {
        return this.itemDesc;
    }
    
    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

	public Integer getItemIndex() {
		return itemIndex;
	}


	public void setItemIndex(Integer itemIndex) {
		this.itemIndex = itemIndex;
	}


	/**
	 * @return the vcityQuestion
	 */
	public VcityQuestion getVcityQuestion() {
		return vcityQuestion;
	}


	/**
	 * @param vcityQuestion the vcityQuestion to set
	 */
	public void setVcityQuestion(VcityQuestion vcityQuestion) {
		this.vcityQuestion = vcityQuestion;
	}
	
	private Object selectFlag;


	public Object getSelectFlag() {
		return selectFlag;
	}


	public void setSelectFlag(Object selectFlag) {
		this.selectFlag = selectFlag;
	}


	public String getFlag() {
		return flag;
	}


	public void setFlag(String flag) {
		this.flag = flag;
	}

    public Set<VcityQuestionresult> getVcityQuestionresult() {
		return vcityQuestionresult;
	}

	public void setVcityQuestionresult(Set<VcityQuestionresult> vcityQuestionresult) {
		this.vcityQuestionresult = vcityQuestionresult;
	}



}