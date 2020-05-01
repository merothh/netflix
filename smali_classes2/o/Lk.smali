.class public Lo/Lk;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lo/Ly$Activity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lo/Ly$Activity<",
        "Lo/Az;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lo/BaseAdapter;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Lo/Az;

.field private final h:Lo/Lw;

.field private i:Lo/ResourceCursorAdapter;

.field public j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Lo/Lw;

    invoke-direct {p1}, Lo/Lw;-><init>()V

    iput-object p1, p0, Lo/Lk;->h:Lo/Lw;

    .line 64
    invoke-direct {p0}, Lo/Lk;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Lo/Lw;

    invoke-direct {p1}, Lo/Lw;-><init>()V

    iput-object p1, p0, Lo/Lk;->h:Lo/Lw;

    .line 69
    invoke-direct {p0}, Lo/Lk;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Lo/Lw;

    invoke-direct {p1}, Lo/Lw;-><init>()V

    iput-object p1, p0, Lo/Lk;->h:Lo/Lw;

    .line 74
    invoke-direct {p0}, Lo/Lk;->e()V

    return-void
.end method

.method static synthetic b(Lo/Lk;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Lk;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object p1, p0, Lo/Lk;->f:Lo/Az;

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 212
    iget-object v0, p0, Lo/Lk;->f:Lo/Az;

    invoke-interface {v0}, Lo/Az;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {p0}, Lo/Lk;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "CwView onClick(): video is null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "CwView.init"

    .line 95
    invoke-static {v0}, Lo/TextView;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lo/Lk;->setFocusable(Z)V

    .line 97
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cE:I

    invoke-virtual {p0, v1}, Lo/Lk;->setBackgroundResource(I)V

    .line 99
    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lo/Lk;->d()I

    move-result v2

    invoke-static {v1, v2, p0}, Lo/Lk;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Lo/Lk;->b()V

    .line 104
    iget-object v1, p0, Lo/Lk;->a:Lo/BaseAdapter;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, v0}, Lo/BaseAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 108
    :cond_0
    new-instance v0, Lo/ResourceCursorAdapter;

    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1, p0}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object v0, p0, Lo/Lk;->i:Lo/ResourceCursorAdapter;

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lo/Lk;->h:Lo/Lw;

    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->F:I

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/Lw;->d(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lo/Lk;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 115
    iget-object v1, p0, Lo/Lk;->h:Lo/Lw;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_2
    invoke-static {}, Lo/TextView;->a()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View$OnClickListener;
    .locals 1

    .line 209
    new-instance v0, Lo/Lg;

    invoke-direct {v0, p0}, Lo/Lg;-><init>(Lo/Lk;)V

    return-object v0
.end method

.method protected b()V
    .locals 1

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vx:I

    invoke-virtual {p0, v0}, Lo/Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Lk;->e:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dM:I

    invoke-virtual {p0, v0}, Lo/Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Lk;->b:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dP:I

    invoke-virtual {p0, v0}, Lo/Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Lk;->a:Lo/BaseAdapter;

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dN:I

    invoke-virtual {p0, v0}, Lo/Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Lk;->c:Landroid/view/View;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dO:I

    invoke-virtual {p0, v0}, Lo/Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Lk;->d:Landroid/widget/ImageView;

    .line 91
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 39
    check-cast p1, Lo/Az;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Lk;->c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 4

    .line 146
    iput-object p1, p0, Lo/Lk;->f:Lo/Az;

    .line 147
    iput-object p2, p0, Lo/Lk;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 p3, 0x0

    .line 149
    invoke-virtual {p0, p3}, Lo/Lk;->setVisibility(I)V

    .line 151
    invoke-virtual {p0}, Lo/Lk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lo/Lk;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lo/Lk;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lo/Lk;->setTitle(Lo/Az;)V

    .line 158
    :cond_0
    invoke-virtual {p0, v0, p4}, Lo/Lk;->d(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {p0}, Lo/Lk;->a()Landroid/view/View$OnClickListener;

    move-result-object p4

    invoke-virtual {p0, p4}, Lo/Lk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget-object p4, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    invoke-interface {p1}, Lo/Az;->P()I

    move-result v0

    invoke-interface {p1}, Lo/Az;->S()I

    move-result v2

    invoke-interface {p1}, Lo/Az;->ao()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v0, v2, v3}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result p4

    .line 163
    iget-object v0, p0, Lo/Lk;->h:Lo/Lw;

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lo/Lw;->c(F)V

    .line 165
    iget-object p4, p0, Lo/Lk;->d:Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    .line 166
    invoke-virtual {p0}, Lo/Lk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->u:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p3, p0, Lo/Lk;->i:Lo/ResourceCursorAdapter;

    iget-object p4, p0, Lo/Lk;->d:Landroid/widget/ImageView;

    invoke-virtual {p3, p4, p1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 168
    iget-object p2, p0, Lo/Lk;->d:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;)V

    .line 171
    :cond_1
    iget-object p2, p0, Lo/Lk;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lo/Az;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p4

    invoke-static {p3, p1, p4}, Lo/aeE;->e(Landroid/content/Context;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected d()I
    .locals 1

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->z:I

    return v0
.end method

.method public d(Lo/Az;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_0
    invoke-interface {p1}, Lo/Az;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;Z)V
    .locals 3

    .line 220
    iget-object v0, p0, Lo/Lk;->f:Lo/Az;

    invoke-virtual {p0, v0}, Lo/Lk;->d(Lo/Az;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "image url is empty, CwView.loadImage"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lo/Lk;->a:Lo/BaseAdapter;

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    invoke-virtual {v1, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 232
    iget-object p2, p0, Lo/Lk;->a:Lo/BaseAdapter;

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lo/Lk;->a:Lo/BaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 183
    iget-object v0, p0, Lo/Lk;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "CwView.getPlayContext has null trackingInfo"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x1fe

    const-string v2, "CwView"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setInfoViewId(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lo/Lk;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    return-void
.end method

.method public setTitle(Lo/Az;)V
    .locals 8

    .line 197
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lo/Az;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {p1}, Lo/Az;->ai()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/Lk;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->ft:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-interface {p1}, Lo/Az;->l()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lo/Lk;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Lk;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->jC:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {p1}, Lo/Az;->ag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-interface {p1}, Lo/Az;->V()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lo/Lk;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
