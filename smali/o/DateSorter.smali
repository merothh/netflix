.class public abstract Lo/DateSorter;
.super Lo/SharedElementCallback;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DateSorter$ActionBar;
    }
.end annotation


# instance fields
.field private component:Ljava/lang/Object;

.field isInjectionComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/DateSorter;->component:Ljava/lang/Object;

    return-object v0
.end method

.method public internal_only_isInjectionComplete()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/DateSorter;->isInjectionComplete:Z

    return v0
.end method

.method public internal_only_onInjectionComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/DateSorter;->isInjectionComplete:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lo/DateSorter;->performInjection()V

    .line 46
    invoke-super {p0, p1}, Lo/SharedElementCallback;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public performInjection()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lo/DateSorter;->internal_only_isInjectionComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {v0, p0}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 37
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/DateSorter;->component:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lo/DateSorter;->component:Ljava/lang/Object;

    check-cast v0, Lo/DateSorter$ActionBar;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v0, v1}, Lo/DateSorter$ActionBar;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 39
    invoke-virtual {p0}, Lo/DateSorter;->internal_only_onInjectionComplete()V

    :cond_0
    return-void
.end method
