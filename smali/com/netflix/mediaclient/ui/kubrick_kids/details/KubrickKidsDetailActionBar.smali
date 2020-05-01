.class public Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source "KubrickKidsDetailActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;->setWidth()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f03001b

    return v0
.end method

.method public setWidth()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
