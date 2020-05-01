.class public abstract Lo/Ds;
.super Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ds$TaskDescription;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/Ds;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lo/Ds;->performInjection()V

    .line 32
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public performInjection()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lo/Ds;->internal_only_isInjectionComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {v0, p0}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 22
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/Ds;->d:Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lo/Ds;->d:Ljava/lang/Object;

    check-cast v0, Lo/Ds$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/DW;

    invoke-interface {v0, v1}, Lo/Ds$TaskDescription;->a(Lo/DW;)V

    .line 24
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->performInjection()V

    .line 25
    invoke-virtual {p0}, Lo/Ds;->internal_only_onInjectionComplete()V

    :cond_0
    return-void
.end method
