.class public abstract Lo/ValueFinder;
.super Lcom/netflix/mediaclient/NetflixApplication;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ValueFinder$StateListAnimator;
    }
.end annotation


# instance fields
.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lo/ValueFinder;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {v0, p0}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lo/ValueFinder$StateListAnimator;

    .line 34
    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/NetflixApp;

    invoke-interface {v0, v1}, Lo/ValueFinder$StateListAnimator;->c(Lcom/netflix/mediaclient/NetflixApp;)V

    .line 35
    invoke-virtual {p0}, Lo/ValueFinder;->m()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/ValueFinder;->d:Z

    return v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lo/ValueFinder;->d:Z

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lo/ValueFinder;->k()V

    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/NetflixApplication;->onCreate()V

    return-void
.end method
