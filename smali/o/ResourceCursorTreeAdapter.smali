.class public Lo/ResourceCursorTreeAdapter;
.super Lo/GridView;
.source ""

# interfaces
.implements Lo/Ly$Activity;
.implements Lo/Df;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GridView;",
        "Lo/Ly$Activity<",
        "Lo/AR;",
        ">;",
        "Lo/Df;"
    }
.end annotation


# instance fields
.field protected a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field protected b:Lo/AR;

.field protected e:Lo/ResourceCursorAdapter;

.field private f:Ljava/lang/String;

.field private g:Z

.field protected h:Ljava/lang/String;

.field private i:Lo/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lo/GridView;-><init>(Landroid/content/Context;)V

    const-string p1, "EMPTY"

    .line 57
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lo/ResourceCursorTreeAdapter;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "EMPTY"

    .line 57
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lo/ResourceCursorTreeAdapter;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "EMPTY"

    .line 57
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lo/ResourceCursorTreeAdapter;->s()V

    return-void
.end method

.method private a(Lo/AR;)Ljava/lang/String;
    .locals 1

    .line 185
    instance-of v0, p1, Lo/agg;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lo/agg;

    invoke-interface {p1}, Lo/agg;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private r()V
    .locals 4

    .line 117
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 120
    new-instance v1, Lo/RelativeLayout;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    .line 121
    iget-object v1, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$LoaderManager;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lo/RelativeLayout;->a(I)V

    .line 122
    iget-object v1, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->al:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lo/RelativeLayout;->b(I)V

    .line 123
    iget-object v1, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v0}, Lo/RelativeLayout;->c(IIII)V

    .line 124
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/RelativeLayout;->e(I)V

    .line 125
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/RelativeLayout;->b(Landroid/content/Context;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    iget-object v1, p0, Lo/ResourceCursorTreeAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/RelativeLayout;->e(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->i:Lo/RelativeLayout;

    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private s()V
    .locals 3

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setFocusable(Z)V

    .line 79
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cE:I

    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setBackgroundResource(I)V

    .line 81
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cH:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    invoke-static {}, Lo/ady;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lo/LR;

    .line 89
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 92
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->k()Z

    move-result v2

    invoke-direct {v0, v1, p0, p0, v2}, Lo/LR;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;Lo/Df;Z)V

    iput-object v0, p0, Lo/ResourceCursorTreeAdapter;->e:Lo/ResourceCursorAdapter;

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lo/ResourceCursorAdapter;

    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1, p0}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object v0, p0, Lo/ResourceCursorTreeAdapter;->e:Lo/ResourceCursorAdapter;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 1

    .line 146
    iput-object p2, p0, Lo/ResourceCursorTreeAdapter;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const-string p3, "EMPTY"

    .line 149
    iput-object p3, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->b:Lo/AR;

    .line 153
    iget-object p3, p0, Lo/ResourceCursorTreeAdapter;->e:Lo/ResourceCursorAdapter;

    invoke-virtual {p3, p0, p1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 155
    invoke-virtual {p0, p1}, Lo/ResourceCursorTreeAdapter;->b(Lo/AR;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    .line 157
    invoke-virtual {p0, p3}, Lo/ResourceCursorTreeAdapter;->setVisibility(I)V

    .line 158
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->l()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setVisibility(I)V

    .line 161
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lo/ResourceCursorTreeAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    new-instance p3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {p3, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    invoke-virtual {p0, p3}, Lo/ResourceCursorTreeAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 165
    :goto_0
    instance-of p3, p0, Lo/PopupMenu;

    if-eqz p3, :cond_1

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 168
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->f:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lo/ResourceCursorTreeAdapter;->r()V

    .line 170
    invoke-virtual {p0, v0}, Lo/ResourceCursorTreeAdapter;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Lo/AR;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 180
    :cond_0
    iget-boolean v0, p0, Lo/ResourceCursorTreeAdapter;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lo/ResourceCursorTreeAdapter;->a(Lo/AR;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 39
    check-cast p1, Lo/AR;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/ResourceCursorTreeAdapter;->a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 140
    invoke-super {p0}, Lo/GridView;->i()V

    .line 141
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->e:Lo/ResourceCursorAdapter;

    invoke-virtual {v0, p0}, Lo/ResourceCursorAdapter;->d(Landroid/view/View;)V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Lo/ResourceCursorTreeAdapter;->j()Z

    move-result v0

    return v0
.end method

.method public n()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 205
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 194
    iget-object v0, p0, Lo/ResourceCursorTreeAdapter;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "VideoView.getPlayContext has null trackingInfo"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x1f4

    const-string v2, "VideoView"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setClickListener(Lo/ResourceCursorAdapter;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->e:Lo/ResourceCursorAdapter;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const-string p1, "IMAGE"

    .line 232
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    instance-of v0, p1, Lo/RelativeLayout;

    if-eqz v0, :cond_0

    const-string p1, "TEXT"

    .line 215
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    const-string p1, "IMAGE"

    .line 218
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_1
    instance-of p1, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p1, :cond_2

    const-string p1, "EMPTY"

    .line 221
    iput-object p1, p0, Lo/ResourceCursorTreeAdapter;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public setIsHorizontal(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/ResourceCursorTreeAdapter;->g:Z

    return-void
.end method
