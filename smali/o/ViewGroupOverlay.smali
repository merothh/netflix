.class public abstract Lo/ViewGroupOverlay;
.super Lo/Crossfade;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViewGroupOverlay$Activity;
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Object;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/Crossfade;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/ViewGroupOverlay;->e:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/ViewGroupOverlay;->e:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lo/ViewGroupOverlay;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/ViewGroupOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 37
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ViewGroupOverlay;->c:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lo/ViewGroupOverlay;->c:Ljava/lang/Object;

    check-cast v0, Lo/ViewGroupOverlay$Activity;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;

    invoke-interface {v0, v1}, Lo/ViewGroupOverlay$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;)V

    .line 39
    invoke-virtual {p0}, Lo/ViewGroupOverlay;->d()V

    :cond_0
    return-void
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/ViewGroupOverlay;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lo/ViewGroupOverlay;->e()V

    .line 46
    invoke-super {p0, p1}, Lo/Crossfade;->onAttach(Landroid/app/Activity;)V

    return-void
.end method