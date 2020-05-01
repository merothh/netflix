.class public abstract Lo/YL;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YL$TaskDescription;
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/YL;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lo/YL;->performInjection()V

    .line 33
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public performInjection()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lo/YL;->internal_only_isInjectionComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {v0, p0}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 23
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/YL;->c:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lo/YL;->c:Ljava/lang/Object;

    check-cast v0, Lo/YL$TaskDescription;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-interface {v0, v1}, Lo/YL$TaskDescription;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performInjection()V

    .line 26
    invoke-virtual {p0}, Lo/YL;->internal_only_onInjectionComplete()V

    :cond_0
    return-void
.end method
