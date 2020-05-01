.class public Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
.super Landroid/view/SurfaceView;
.source "TappableSurfaceView.java"


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SCALE:I = 0x3

.field public static final MODE_STRETCH:I = 0x2

.field public static final MODE_ZOOM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "@@@"


# instance fields
.field private final listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPheight:I

.field private mPreviousMeasureHeight:I

.field private mPreviousMeasureWidth:I

.field private mPwidth:I

.field private mScale:F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mode:I

.field private surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    return-void
.end method

.method private initSurface(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "INIT_SURFACE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->startListening()V

    :cond_1
    return-void
.end method

.method public canVideoBeZoomed()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "@@@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/16 v6, 0x78

    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "onMeasure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v0

    :cond_0
    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-lt v2, v3, :cond_8

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    if-lez v2, :cond_8

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "@@@"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use previous measure size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v0

    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use default size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    const/16 v1, 0x780

    const/16 v0, 0x438

    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use hardcode size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parent size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_c

    const-string/jumbo v0, "@@@"

    const-string/jumbo v2, "image too tall, correcting"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    div-int/2addr v0, v2

    :cond_9
    :goto_2
    const-string/jumbo v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aspect ratio corrected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Stretch to full screen ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    :cond_a
    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "@@@"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", start coordinates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;->onSurfaceMeasureChange(II)V

    goto/16 :goto_1

    :cond_c
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_d

    const-string/jumbo v1, "@@@"

    const-string/jumbo v2, "image too wide, correcting"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aspect ratio is correct: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Follow Aspect ration"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_2
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Scale surface"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_a

    int-to-float v1, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_3

    :pswitch_3
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Zoomin ..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_e

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_3

    :cond_e
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "TAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return v3
.end method

.method processOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;->onTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->stopListening()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    return-void
.end method
