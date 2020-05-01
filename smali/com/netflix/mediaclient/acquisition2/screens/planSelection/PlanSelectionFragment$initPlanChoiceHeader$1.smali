.class final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "planId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/InputChannel;->a(Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/InputChannel;->b(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->selectPlan(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;->d(Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
