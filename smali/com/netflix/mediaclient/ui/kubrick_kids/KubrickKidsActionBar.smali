.class public Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source "KubrickKidsActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f03001c

    return v0
.end method

.method public setSandwichIcon(Z)V
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f020103

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 22
    return-void

    .line 21
    :cond_0
    const v0, 0x7f020102

    goto :goto_0
.end method

.method public setWidth()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    return-void
.end method
