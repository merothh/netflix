.class public abstract Lo/AtomicFile;
.super Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AtomicFile$Application;
    }
.end annotation


# instance fields
.field d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/AtomicFile;->d:Z

    return v0
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/AtomicFile;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lo/AtomicFile;->d:Z

    return-void
.end method

.method public m()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lo/AtomicFile;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/AtomicFile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 36
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/AtomicFile;->e:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lo/AtomicFile;->e:Ljava/lang/Object;

    check-cast v0, Lo/AtomicFile$Application;

    move-object v1, p0

    check-cast v1, Lo/DataUnit;

    invoke-interface {v0, v1}, Lo/AtomicFile$Application;->e(Lo/DataUnit;)V

    .line 38
    invoke-virtual {p0}, Lo/AtomicFile;->k()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lo/AtomicFile;->m()V

    .line 45
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method
