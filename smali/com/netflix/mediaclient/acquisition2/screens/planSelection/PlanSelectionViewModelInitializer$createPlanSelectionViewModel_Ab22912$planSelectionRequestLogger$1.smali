.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InputEventSender;->b(Landroidx/fragment/app/Fragment;)Lo/RoundScrollbarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/cl/model/event/session/action/SelectPlan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/InputEventReceiver;

.field final synthetic d:Lo/InputEventSender;


# direct methods
.method public constructor <init>(Lo/InputEventSender;Lo/InputEventReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;->d:Lo/InputEventSender;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;->b:Lo/InputEventReceiver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/cl/model/event/session/action/SelectPlan;
    .locals 3

    .line 173
    new-instance v0, Lcom/netflix/cl/model/event/session/action/SelectPlan;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;->d:Lo/InputEventSender;

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;->b:Lo/InputEventReceiver;

    invoke-static {v1, v2}, Lo/InputEventSender;->c(Lo/InputEventSender;Lo/InputEventReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/SelectPlan;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;->b()Lcom/netflix/cl/model/event/session/action/SelectPlan;

    move-result-object v0

    return-object v0
.end method
