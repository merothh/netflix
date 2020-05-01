.class public Lcom/netflix/mediaclient/ui/kubrick_kids/search/KubrickKidsSearchActionBar;
.super Lcom/netflix/mediaclient/android/widget/SearchActionBar;
.source "KubrickKidsSearchActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method


# virtual methods
.method protected getActiveSearchIconResId()I
    .locals 1

    const v0, 0x7f020138

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f03001c

    return v0
.end method

.method protected getSearchCloseButtonTint()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/search/KubrickKidsSearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchViewBgResId()I
    .locals 1

    const v0, 0x7f0201d7

    return v0
.end method

.method protected getSearchViewRightBgResId()I
    .locals 1

    const v0, 0x7f0201d9

    return v0
.end method

.method protected getSearchViewTextColorResId()I
    .locals 1

    const v0, 0x7f0e0019

    return v0
.end method

.method protected getSearchVoiceButtonTint()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/search/KubrickKidsSearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
