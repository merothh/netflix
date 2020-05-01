.class public abstract Lo/OrientationEventListener;
.super Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OrientationEventListener$TaskDescription;
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/OrientationEventListener;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public o()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lo/OrientationEventListener;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/OrientationEventListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 23
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/OrientationEventListener;->e:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lo/OrientationEventListener;->e:Ljava/lang/Object;

    check-cast v0, Lo/OrientationEventListener$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lo/OrientationEventListener$TaskDescription;->a(Lo/ScaleGestureDetector;)V

    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->o()V

    .line 26
    invoke-virtual {p0}, Lo/OrientationEventListener;->m()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lo/OrientationEventListener;->o()V

    .line 33
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method
