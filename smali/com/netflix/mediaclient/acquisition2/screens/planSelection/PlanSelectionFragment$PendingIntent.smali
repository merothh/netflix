.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;
.super Lcom/netflix/mediaclient/util/ViewUtils$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/ViewUtils$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lo/InputChannel;->b(IF)I

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->y()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getOnPlanChanged()Lo/alA;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->y()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->w()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->selectPlanButton(ZI)V

    const/4 p1, 0x1

    return p1
.end method
