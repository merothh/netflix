.class public abstract Lo/VisibilityPropagation;
.super Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VisibilityPropagation$ActionBar;
    }
.end annotation


# instance fields
.field c:Z

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/VisibilityPropagation;->c:Z

    return v0
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/VisibilityPropagation;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/VisibilityPropagation;->c:Z

    return-void
.end method

.method public n()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lo/VisibilityPropagation;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/VisibilityPropagation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 37
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/VisibilityPropagation;->d:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lo/VisibilityPropagation;->d:Ljava/lang/Object;

    check-cast v0, Lo/VisibilityPropagation$ActionBar;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-interface {v0, v1}, Lo/VisibilityPropagation$ActionBar;->a(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    .line 39
    invoke-virtual {p0}, Lo/VisibilityPropagation;->k()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lo/VisibilityPropagation;->n()V

    .line 46
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onAttach(Landroid/app/Activity;)V

    return-void
.end method