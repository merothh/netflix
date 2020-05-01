.class public final Lo/Yq;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yq$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/Yq$StateListAnimator;


# instance fields
.field private final f:Lo/UpdateEngine;

.field private h:Ljava/util/HashMap;

.field private i:Lo/Yx;

.field private j:Lo/Yz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yq$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yq$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yq;->b:Lo/Yq$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 26
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/Yq;->f:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic a(Lo/Yq;)Lo/Yx;
    .locals 1

    .line 20
    iget-object p0, p0, Lo/Yq;->i:Lo/Yx;

    if-nez p0, :cond_0

    const-string v0, "previewsSlideshowUIPresenter"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()I
    .locals 1

    .line 137
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fa:I

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fh:I

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fb:I

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fg:I

    goto :goto_0

    .line 141
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eZ:I

    :goto_0
    return v0
.end method

.method public static final synthetic e(Lo/Yq;)Lo/Yz;
    .locals 1

    .line 20
    iget-object p0, p0, Lo/Yq;->j:Lo/Yz;

    if-nez p0, :cond_0

    const-string v0, "previewsSlideshowUIView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lo/Yq;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lo/Yq;->getActivity()Lo/Serializable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "previews_lolomo_view_boxart_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 34
    :goto_0
    invoke-virtual {p0}, Lo/Yq;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "previews_lolomo_view_title_treatment_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    move-object v5, p1

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v4, :cond_2

    .line 35
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    if-nez p2, :cond_3

    .line 38
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Container is null - can\'t create Previews Slideshow UI"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v0

    :cond_3
    if-eqz v4, :cond_4

    if-nez v5, :cond_5

    .line 43
    :cond_4
    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Intent data is null - can\'t create Previews Slideshow UI"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 51
    :cond_5
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    new-instance v0, Lo/Yv;

    .line 54
    new-instance v1, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;-><init>(Lo/Yq;)V

    move-object v3, v1

    check-cast v3, Lo/alB;

    .line 63
    sget-object v1, Lo/YE;->a:Lo/YE;

    invoke-virtual {v1}, Lo/YE;->j()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-direct {p0}, Lo/Yq;->d()I

    move-result v7

    .line 65
    invoke-virtual {p0}, Lo/Yq;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v1, v0

    move-object v2, p2

    .line 52
    invoke-direct/range {v1 .. v8}, Lo/Yv;-><init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;ILandroid/content/Context;)V

    check-cast v0, Lo/Yz;

    iput-object v0, p0, Lo/Yq;->j:Lo/Yz;

    goto :goto_3

    .line 68
    :cond_6
    new-instance v0, Lo/Yz;

    .line 70
    new-instance v1, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$2;-><init>(Lo/Yq;)V

    move-object v3, v1

    check-cast v3, Lo/alB;

    .line 79
    sget-object v1, Lo/YE;->a:Lo/YE;

    invoke-virtual {v1}, Lo/YE;->j()Ljava/lang/String;

    move-result-object v6

    .line 80
    sget v7, Lcom/netflix/mediaclient/ui/R$Dialog;->eZ:I

    move-object v1, v0

    move-object v2, p2

    .line 68
    invoke-direct/range {v1 .. v7}, Lo/Yz;-><init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;I)V

    iput-object v0, p0, Lo/Yq;->j:Lo/Yz;

    .line 83
    :goto_3
    new-instance p2, Lo/Yx;

    .line 84
    iget-object v0, p0, Lo/Yq;->j:Lo/Yz;

    const-string v1, "previewsSlideshowUIView"

    if-nez v0, :cond_7

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 85
    :cond_7
    iget-object v2, p0, Lo/Yq;->f:Lo/UpdateEngine;

    const-class v3, Lo/YD;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 83
    invoke-direct {p2, v0, v2, p3, p1}, Lo/Yx;-><init>(Lo/Yz;Lio/reactivex/Observable;Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object p2, p0, Lo/Yq;->i:Lo/Yx;

    .line 90
    iget-object p1, p0, Lo/Yq;->j:Lo/Yz;

    if-nez p1, :cond_8

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lo/Yq;->j:Lo/Yz;

    if-nez v0, :cond_0

    const-string v1, "previewsSlideshowUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Yz;->l()V

    .line 132
    iget-object v0, p0, Lo/Yq;->i:Lo/Yx;

    if-nez v0, :cond_1

    const-string v1, "previewsSlideshowUIPresenter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lo/Yx;->d()V

    .line 133
    invoke-virtual {p0}, Lo/Yq;->c()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 125
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0}, Lo/Yi;->d()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 113
    sget-object v0, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {v0}, Lo/Yi;->a()V

    .line 118
    iget-object v0, p0, Lo/Yq;->j:Lo/Yz;

    if-nez v0, :cond_0

    const-string v1, "previewsSlideshowUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lo/Yz;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lo/Yq;->i:Lo/Yx;

    if-nez v0, :cond_0

    const-string v1, "previewsSlideshowUIPresenter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/Yx;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lo/Yq;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 96
    new-instance p2, Lo/Yq$Activity;

    invoke-direct {p2, p0}, Lo/Yq$Activity;-><init>(Lo/Yq;)V

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method
