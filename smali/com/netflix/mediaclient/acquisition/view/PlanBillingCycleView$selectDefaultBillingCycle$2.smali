.class final Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->selectDefaultBillingCycle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$2;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$2;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getOnPlanBillingCycleChanged()Lo/alA;

    move-result-object p1

    const-string v0, "Monthly"

    invoke-interface {p1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
