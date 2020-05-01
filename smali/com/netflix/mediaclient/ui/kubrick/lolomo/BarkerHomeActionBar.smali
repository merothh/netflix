.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source "BarkerHomeActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 12
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;->showDropShadowIfAvailable()V

    .line 17
    return-void
.end method
