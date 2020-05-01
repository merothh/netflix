.class public abstract Lo/GG;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GG$ActionBar;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public ai_()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lo/GG;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/GG;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 23
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/GG;->b:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lo/GG;->b:Ljava/lang/Object;

    check-cast v0, Lo/GG$ActionBar;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-interface {v0, v1}, Lo/GG$ActionBar;->c(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ai_()V

    .line 26
    invoke-virtual {p0}, Lo/GG;->ah_()V

    :cond_0
    return-void
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/GG;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lo/GG;->ai_()V

    .line 33
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onAttach(Landroid/app/Activity;)V

    return-void
.end method
