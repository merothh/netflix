.class public abstract Lo/CookieSyncManager;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroidx/fragment/app/Fragment;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected Q_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a()Landroidx/fragment/app/Fragment;
.end method

.method protected a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    .line 166
    invoke-virtual {p0, p1}, Lo/CookieSyncManager;->setFragmentPadding(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()V
    .locals 3

    .line 117
    iget-object v0, p0, Lo/CookieSyncManager;->b:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v0, p0, Lo/CookieSyncManager;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f19999a    # 0.6f

    .line 121
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    iget-object v1, p0, Lo/CookieSyncManager;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/CookieSyncManager;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    iget-object v1, p0, Lo/CookieSyncManager;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected f()I
    .locals 1

    .line 153
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bC:I

    return v0
.end method

.method public h()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method public i()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    check-cast v0, Lo/JsDialogHelper;

    invoke-interface {v0}, Lo/JsDialogHelper;->isLoadingData()Z

    move-result v0

    .line 188
    iget-object v1, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 189
    check-cast v1, Lo/JsDialogHelper;

    invoke-interface {v1}, Lo/JsDialogHelper;->isLoadingData()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lo/CookieSyncManager;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->setContentView(I)V

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hc:I

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/CookieSyncManager;->b:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ph:I

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/CookieSyncManager;->d:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p0}, Lo/CookieSyncManager;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/CookieSyncManager;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 51
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 57
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qY:I

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/CookieSyncManager;->a:Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0, p1}, Lo/CookieSyncManager;->setupCastPlayerFrag(Landroid/os/Bundle;)V

    const-string v0, "secondary"

    const-string v2, "primary"

    if-nez p1, :cond_3

    .line 62
    invoke-virtual {p0}, Lo/CookieSyncManager;->a()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    .line 63
    invoke-virtual {p0}, Lo/CookieSyncManager;->c()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    .line 71
    invoke-virtual {p0}, Lo/CookieSyncManager;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    .line 72
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ph:I

    iget-object v4, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3, v4, v2}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 73
    iget-object v2, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 74
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->qY:I

    iget-object v3, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2, v3, v0}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 86
    :cond_1
    invoke-virtual {p0}, Lo/CookieSyncManager;->Q_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->e()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->b()I

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lo/CookieSyncManager;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    .line 94
    invoke-virtual {p0}, Lo/CookieSyncManager;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    .line 97
    :goto_0
    iget-object p1, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lo/CookieSyncManager;->setFragmentPadding(Landroidx/fragment/app/Fragment;)V

    .line 98
    iget-object p1, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lo/CookieSyncManager;->setFragmentPadding(Landroidx/fragment/app/Fragment;)V

    .line 100
    iget-object p1, p0, Lo/CookieSyncManager;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p0}, Lo/CookieSyncManager;->e()V

    .line 104
    :cond_4
    iget-object p1, p0, Lo/CookieSyncManager;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 105
    iget-object v0, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_5

    const/16 v1, 0x8

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public onPaddingChanged()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    .line 245
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->setFragmentPadding(Landroidx/fragment/app/Fragment;)V

    .line 246
    iget-object v0, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lo/CookieSyncManager;->setFragmentPadding(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lo/CookieSyncManager;->updateActionBar()Z

    return-void
.end method

.method public setFragmentsHiddenState(ZLo/CharsetDecoder;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lo/CookieSyncManager;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v1, v0}, Lo/UnsupportedEncodingException;->c(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v1, v0}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 224
    :goto_0
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->c()V

    if-nez p1, :cond_1

    .line 226
    invoke-virtual {p0}, Lo/CookieSyncManager;->updateActionBar()Z

    :cond_1
    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    .line 202
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 203
    check-cast v0, Lo/JsDialogHelper;

    invoke-interface {v0, p1}, Lo/JsDialogHelper;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lo/CookieSyncManager;->e:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 206
    check-cast v0, Lo/JsDialogHelper;

    invoke-interface {v0, p1}, Lo/JsDialogHelper;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    :cond_1
    return-void
.end method

.method public updateActionBar()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lo/CookieSyncManager;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lo/CookieSyncManager;->c:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ad_()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
