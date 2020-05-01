.class public Lo/PopupWindow;
.super Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.source ""


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lo/PopupWindow;->e(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    const-string p1, "ScalableNetflixVideoView"

    const-string v0, "INIT_SURFACE"

    .line 47
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/16 v0, 0x780

    const/16 v1, 0x438

    const-string v4, "ScalableNetflixVideoView"

    const-string v5, "use hardcoded size"

    .line 60
    invoke-static {v4, v5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-virtual {p0}, Lo/PopupWindow;->H()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p0}, Lo/PopupWindow;->G()I

    move-result v4

    if-lez v4, :cond_6

    int-to-float p1, v0

    int-to-float p2, v1

    div-float v4, p1, p2

    .line 65
    invoke-virtual {p0}, Lo/PopupWindow;->H()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lo/PopupWindow;->G()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_3

    if-ne v3, v6, :cond_3

    cmpl-float v2, v4, v5

    if-lez v2, :cond_2

    mul-float v5, v5, p2

    float-to-int p1, v5

    .line 69
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    div-float/2addr p1, v5

    float-to-int p1, p1

    .line 71
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_3
    if-ne v2, v6, :cond_4

    mul-float v5, v5, p2

    float-to-int p1, v5

    .line 74
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_2

    :cond_4
    if-ne v3, v6, :cond_5

    div-float/2addr p1, v5

    float-to-int p1, p1

    .line 76
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    move v1, p1

    :cond_5
    :goto_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 80
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 81
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 79
    invoke-super {p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->onMeasure(II)V

    goto :goto_3

    .line 83
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->onMeasure(II)V

    .line 86
    :goto_3
    iput v0, p0, Lo/PopupWindow;->b:I

    .line 87
    iput v1, p0, Lo/PopupWindow;->a:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVideoSize(II)V

    .line 111
    invoke-virtual {p0}, Lo/PopupWindow;->requestLayout()V

    return-void
.end method
