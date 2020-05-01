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

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 46
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 47
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 52
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 66
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private initSurface(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "INIT_SURFACE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method public addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V
    .locals 1

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->startListening()V

    .line 120
    :cond_1
    return-void
.end method

.method public canVideoBeZoomed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 368
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
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

    .line 371
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    if-nez v1, :cond_2

    .line 378
    :cond_1
    :goto_0
    return v0

    .line 374
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 375
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/16 v6, 0x78

    .line 145
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "onMeasure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 150
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 151
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 177
    :cond_0
    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 178
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 185
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-lt v2, v3, :cond_8

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    if-lez v2, :cond_8

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
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

    .line 189
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    .line 258
    :cond_2
    :goto_1
    return-void

    .line 156
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 161
    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 162
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 163
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 164
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use default size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_7

    .line 168
    :cond_6
    const/16 v1, 0x780

    .line 169
    const/16 v0, 0x438

    .line 170
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use hardcode size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
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

    .line 192
    :cond_8
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-lez v2, :cond_9

    .line 193
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_c

    .line 194
    const-string/jumbo v0, "@@@"

    const-string/jumbo v2, "image too tall, correcting"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    div-int/2addr v0, v2

    .line 205
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

    .line 206
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 237
    :pswitch_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Stretch to full screen ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 239
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 245
    :cond_a
    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 246
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLocationOnScreen([I)V

    .line 247
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 248
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

    .line 251
    :cond_b
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    .line 252
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 253
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 255
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;->onSurfaceMeasureChange(II)V

    goto/16 :goto_1

    .line 196
    :cond_c
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_d

    .line 197
    const-string/jumbo v1, "@@@"

    const-string/jumbo v2, "image too wide, correcting"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto/16 :goto_2

    .line 200
    :cond_d
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 201
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

    .line 208
    :pswitch_1
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Follow Aspect ration"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 211
    :pswitch_2
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Scale surface"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_a

    .line 215
    int-to-float v1, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 216
    int-to-float v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 217
    goto/16 :goto_3

    .line 219
    :pswitch_3
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Zoomin ..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 223
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 224
    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 226
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_e

    .line 227
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 228
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_3

    .line 231
    :cond_e
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 232
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 234
    goto/16 :goto_3

    .line 206
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

    .prologue
    const/4 v3, 0x1

    .line 86
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

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 92
    :cond_0
    return v3
.end method

.method processOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 102
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

    .line 103
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;->onTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z
    .locals 2

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 131
    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->stopListening()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 327
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 329
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 330
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 344
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 345
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 346
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .line 360
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    .line 308
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 309
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    .line 289
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 290
    return-void
.end method
