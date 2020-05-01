.class public Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;
.super Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.source "ImageBasedSubtitleManager.java"


# instance fields
.field private mImageWrapper:Landroid/widget/RelativeLayout;

.field protected mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

.field private mPlayerControlsVisible:Z

.field private mVisibleBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->setVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    return-void
.end method

.method private createImage(Ljava/lang/String;IIZ)Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 406
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    if-nez v0, :cond_0

    .line 408
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==> Unable to decode file on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    .line 412
    :cond_0
    if-eqz p4, :cond_2

    .line 413
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scale to w/h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    :goto_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 422
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 424
    goto :goto_0

    .line 418
    :cond_2
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Do not scale, use image original width"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private getHorizontalOffset()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getHorizontalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private getScaleFactor()F
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 389
    const/high16 v0, 0x3f800000    # 1.0f

    .line 391
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getScaleFactor()F

    move-result v0

    goto :goto_0
.end method

.method private getVerticalOffset()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getVerticalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private removeAll(Z)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 141
    return-void
.end method

.method private removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 2

    .prologue
    .line 458
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle block can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 464
    if-eqz v0, :cond_1

    .line 468
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setVisibility(Z)V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "All images invisible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 237
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    .line 239
    :cond_1
    return-void
.end method

.method private showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No image! Can not show!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Show subtitle block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->displayed()V

    .line 259
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getScaleFactor()F

    move-result v7

    .line 260
    const/4 v4, 0x1

    .line 261
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v9

    .line 262
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v3, v0

    .line 263
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v2, v0

    .line 266
    const/4 v1, 0x0

    .line 267
    const/4 v0, 0x0

    .line 269
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getDeviceHeight()I

    move-result v5

    const/16 v6, 0x1e0

    if-ge v5, v6, :cond_4

    .line 270
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not scaling down! This happens only when device resolution is lower than 480P (h: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getDeviceHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " and scale factor is lower than 1 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    const/4 v4, 0x0

    .line 274
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 275
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 276
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v3

    .line 277
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v2

    .line 280
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 281
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Scale image "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " from w/h "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Delta Scale image w/h "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_5
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v5

    if-ne v5, v3, :cond_6

    .line 286
    const/4 v4, 0x0

    .line 287
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Source and target resolutions are the same, do not scale!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getHorizontalOffset()I

    move-result v5

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginX()S

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    sub-int v6, v5, v1

    .line 291
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    sub-int v5, v1, v3

    .line 292
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginY()S

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getVerticalOffset()I

    move-result v7

    add-int/2addr v1, v7

    add-int/2addr v1, v0

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 296
    iget-boolean v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPlayerControlsVisible:Z

    if-eqz v7, :cond_7

    .line 297
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v1, v7, :cond_c

    .line 298
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getDisplayAreaMarginBottom()I

    move-result v7

    sub-int/2addr v7, v0

    .line 300
    if-lez v7, :cond_7

    .line 301
    sub-int/2addr v1, v7

    .line 302
    add-int/2addr v0, v7

    .line 314
    :cond_7
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 315
    const-string/jumbo v7, "nf_subtitles_render"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Original image "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " position l/r/t/b: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginX()S

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginX()S

    move-result v10

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginY()S

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginY()S

    move-result v10

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v7, "nf_subtitles_render"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set image before validation"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " to position l/r/t/b: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_8
    if-gez v1, :cond_9

    .line 320
    const-string/jumbo v7, "nf_subtitles_render"

    const-string/jumbo v8, "Top was negative!"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sub-int/2addr v0, v1

    .line 322
    const/4 v1, 0x0

    .line 325
    :cond_9
    if-gez v0, :cond_12

    .line 326
    const-string/jumbo v7, "nf_subtitles_render"

    const-string/jumbo v8, "Bottom was negative!"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    add-int/2addr v1, v0

    .line 328
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 331
    :goto_2
    if-gez v6, :cond_11

    .line 332
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Left was negative!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sub-int v0, v5, v6

    .line 334
    const/4 v1, 0x0

    .line 337
    :goto_3
    if-gez v0, :cond_a

    .line 338
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Right was negative!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    add-int/2addr v1, v0

    .line 340
    const/4 v0, 0x0

    .line 343
    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 344
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Measurement translation: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_b
    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3, v2, v4}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->createImage(Ljava/lang/String;IIZ)Landroid/widget/ImageView;

    move-result-object v5

    .line 348
    if-nez v5, :cond_d

    .line 349
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "showSubtitleBlock:: NULL image for desc.getLocalImagePath()!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :cond_c
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getDisplayAreaMarginTop()I

    move-result v7

    sub-int/2addr v7, v1

    .line 307
    if-lez v7, :cond_7

    .line 308
    add-int/2addr v1, v7

    .line 309
    sub-int/2addr v0, v7

    goto/16 :goto_1

    .line 352
    :cond_d
    const-string/jumbo v6, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showSubtitleBlock:: Image for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, " exist and it is visible "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, ", w/h: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p2, :cond_e

    .line 356
    new-instance v4, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;-><init>(Landroid/view/View;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_e
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 362
    const-string/jumbo v4, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set image "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " after validation to position l/r/t/b: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_f
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    invoke-virtual {v4, v1, v8, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 367
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 352
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_11
    move v0, v5

    move v1, v6

    goto/16 :goto_3

    :cond_12
    move v7, v0

    move v8, v1

    goto/16 :goto_2
.end method

.method private showSubtitleBlocks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 215
    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 219
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->moveBlocksAppartIfNeeded(Ljava/util/List;)V

    .line 223
    :goto_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->makeItVisible(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 229
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Add displayed block to pending queue to be removed at end time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto :goto_0

    .line 221
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "No need to move blocks"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 497
    if-nez p1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne p1, v1, :cond_0

    .line 502
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Clear."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method

.method public clearPendingUpdates()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Clear pending updates:: NOOP."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 429
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    .line 430
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    .line 452
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public declared-synchronized onPlayerOverlayVisibiltyChange(Z)V
    .locals 3

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player UI is now visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPlayerControlsVisible:Z

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    .line 485
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Display area is null, unable to set margins!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 4

    .prologue
    .line 149
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "ImageBasedSubtitleManager:: update subtitle data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p1, :cond_1

    .line 152
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle data is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-nez v0, :cond_2

    .line 157
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle parser is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;

    if-eqz v0, :cond_5

    .line 163
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Parser is as expected..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Same subtitles file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v1, :cond_4

    .line 191
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;->getRootContainerExtentX()S

    move-result v1

    .line 192
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;->getRootContainerExtentY()S

    move-result v0

    .line 193
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 194
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayNowBlocks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlocks(Ljava/util/List;)V

    .line 199
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayLaterBlocks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 165
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drop subtitle change! Timing issue, subtitles are supposed to be image based and parser is not, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitles file changed. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". (Re) create regions!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    goto/16 :goto_1
.end method

.method public onSubtitleRemove()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove all subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 72
    return-void
.end method

.method protected declared-synchronized removeVisibleSubtitleBlocks(Z)V
    .locals 3

    .prologue
    .line 118
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void
.end method

.method public setSubtitleVisibility(Z)V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImageBasedSubtitleManager:: set subtitle visibility to visible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
