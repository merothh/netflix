.class public Lo/Uj;
.super Lo/Ur;
.source ""


# instance fields
.field private a:Lcom/netflix/model/leafs/PostPlayItem;

.field private c:Landroid/widget/ImageView;

.field private d:Lo/BaseAdapter;

.field private e:Lo/BaseAdapter;

.field private f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private c(Lcom/netflix/model/leafs/PostPlayAsset;)Landroid/util/Size;
    .locals 5

    .line 176
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x156

    const/4 v3, 0x1

    int-to-float v3, v3

    .line 193
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getHeight()I

    move-result p1

    div-int/2addr v4, p1

    int-to-float p1, v4

    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x25e

    if-eqz v4, :cond_2

    cmpl-float v1, p1, v3

    if-lez v1, :cond_1

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int v1, v1

    move v2, v1

    const/16 v1, 0x25e

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    mul-float v0, v0, p1

    float-to-int v1, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 209
    :goto_0
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method private i()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lo/Uj;->b:Lo/Uq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uj;->b:Lo/Uq;

    invoke-virtual {v0}, Lo/Uq;->d()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lo/Uj;->b:Lo/Uq;

    invoke-virtual {v0}, Lo/Uq;->d()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 150
    invoke-super {p0}, Lo/Ur;->b()V

    .line 152
    iget-object v0, p0, Lo/Uj;->d:Lo/BaseAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    .line 153
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    .line 154
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lo/Uj;->d:Lo/BaseAdapter;

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    iget-object v3, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    .line 157
    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 158
    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 159
    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 161
    iget-object v0, p0, Lo/Uj;->d:Lo/BaseAdapter;

    iget-object v2, p0, Lo/Uj;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 162
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->n:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    .line 163
    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 161
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lo/Uj;->d:Lo/BaseAdapter;

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lo/Uj;->e:Lo/BaseAdapter;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 167
    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 169
    :cond_1
    iget-object v0, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .line 51
    iput-object p1, p0, Lo/Uj;->b:Lo/Uq;

    .line 52
    iput-object p6, p0, Lo/Uj;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 53
    iput-object p2, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    .line 55
    invoke-direct {p0}, Lo/Uj;->i()Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lo/Uj;->e:Lo/BaseAdapter;

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    iget-object p1, p0, Lo/Uj;->d:Lo/BaseAdapter;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    .line 62
    :cond_0
    iget-object p1, p0, Lo/Uj;->e:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 64
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 66
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 68
    iget-object p1, p0, Lo/Uj;->e:Lo/BaseAdapter;

    .line 69
    invoke-virtual {p6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->n:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    new-array p4, p4, [Ljava/lang/Object;

    .line 70
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, p3

    .line 68
    invoke-static {p6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Uj;->c(Lcom/netflix/model/leafs/PostPlayAsset;)Landroid/util/Size;

    move-result-object p1

    .line 73
    iget-object p4, p0, Lo/Uj;->e:Lo/BaseAdapter;

    invoke-virtual {p4}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p6

    iput p6, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object p4, p0, Lo/Uj;->e:Lo/BaseAdapter;

    invoke-virtual {p4}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lo/Uj;->e:Lo/BaseAdapter;

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lo/Uj;->d:Lo/BaseAdapter;

    if-eqz p1, :cond_4

    .line 80
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 81
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 82
    iget-object p1, p0, Lo/Uj;->e:Lo/BaseAdapter;

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    .line 85
    :cond_3
    iget-object p1, p0, Lo/Uj;->d:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 87
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 89
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 85
    invoke-virtual {p1, v1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 91
    iget-object p1, p0, Lo/Uj;->d:Lo/BaseAdapter;

    .line 92
    invoke-virtual {p6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->n:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    new-array p4, p4, [Ljava/lang/Object;

    .line 93
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, p3

    .line 91
    invoke-static {p6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object p1, p0, Lo/Uj;->d:Lo/BaseAdapter;

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    :goto_0
    if-eqz p5, :cond_7

    .line 100
    invoke-virtual {p0, p5}, Lo/Uj;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 102
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nextEpisode"

    .line 103
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "nextEpisodeSeamless"

    .line 104
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lo/gT;->a:Lo/gT$Activity;

    .line 105
    invoke-virtual {p1}, Lo/gT$Activity;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lo/Uj;->i()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 109
    :cond_5
    iget-object p1, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 107
    :cond_6
    :goto_1
    iget-object p1, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_7
    iget-object p1, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 1

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nt:I

    invoke-virtual {p0, v0}, Lo/Uj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Uj;->d:Lo/BaseAdapter;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nJ:I

    invoke-virtual {p0, v0}, Lo/Uj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nz:I

    invoke-virtual {p0, v0}, Lo/Uj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Uj;->e:Lo/BaseAdapter;

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 132
    iget-object v0, p0, Lo/Uj;->a:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommendations"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lo/Uj;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_1
    invoke-super {p0, p1}, Lo/Ur;->setSelected(Z)V

    return-void
.end method
