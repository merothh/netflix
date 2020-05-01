.class final Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->addPlanChoiceHeaderLayout(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isFourthPlanEnabled:Z

.field final synthetic $planOfferIdList:Ljava/util/List;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->$isFourthPlanEnabled:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->$planOfferIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->$isFourthPlanEnabled:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->selectPlanButton(ZI)V

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getOnPlanChanged()Lo/alA;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;->$planOfferIdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
