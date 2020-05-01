.class public Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;
.super Landroid/widget/RatingBar;
.source "NetflixRatingBar.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixRatingBar"


# instance fields
.field private currRating:I

.field private dispatchedCallback:Z

.field private netflixStars:Landroid/graphics/drawable/Drawable;

.field private onNetflixRatingBarChangeListener:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;

.field private provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

.field private ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

.field private userStars:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->currRating:I

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->currRating:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->updateRatingDrawable()V

    return-void
.end method

.method private dispatchRatingChange(Z)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->onNetflixRatingBarChangeListener:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->onNetflixRatingBarChangeListener:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;->onRatingChanged(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;FZ)V

    .line 210
    :cond_0
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 179
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 178
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private getProgressPerStar()F
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getNumStars()I

    move-result v1

    if-lez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getNumStars()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 382
    :cond_0
    return v0
.end method

.method private getUserRating()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getUserRating()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private handleUserUpate(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Can\'t set rating because provider is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    .line 309
    if-nez v3, :cond_1

    .line 310
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Can\'t set rating because service man is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Video ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 321
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v0, :cond_4

    .line 322
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "episodes"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "detail"

    aput-object v5, v2, v4

    .line 323
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 322
    invoke-interface {v0, v2}, Lcom/netflix/falkor/ModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorEpisode;

    .line 324
    if-nez v0, :cond_3

    .line 325
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t set rating because episode detail is not in cache for video id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 329
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorEpisode;->getShowId()Ljava/lang/String;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 331
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Episode show id for setting rating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v4

    .line 337
    :goto_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v5, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;-><init>(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;I)V

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 336
    :cond_5
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getNetflixStarRatingDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->netflixStars:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getUserStarRatingDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->userStars:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-super {p0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setFocusable(Z)V

    .line 99
    return-void
.end method

.method private isDragging()Z
    .locals 2

    .prologue
    .line 252
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Getting isDragging field"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string/jumbo v1, "mIsDragging"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->logDraggingFieldWarning()V

    .line 261
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private logDraggingFieldWarning()V
    .locals 2

    .prologue
    .line 265
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Could not read mIsDragging field"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 130
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 132
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    .line 134
    :goto_0
    if-ge v3, v4, :cond_2

    .line 135
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 136
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_0

    const v7, 0x102000f

    if-ne v0, v7, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    invoke-direct {p0, v6, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    .line 134
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 136
    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_2
    if-ge v1, v4, :cond_5

    .line 142
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_4

    .line 149
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 150
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 153
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setLevel(I)Z

    .line 154
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    :goto_3
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->setLevel(I)Z

    .line 158
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v2, v3

    goto :goto_3

    .line 162
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    .line 164
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 167
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 168
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    if-eqz p2, :cond_6

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 174
    :cond_5
    :goto_4
    return-object v0

    :cond_6
    move-object v0, v1

    .line 171
    goto :goto_4

    :cond_7
    move-object v0, p1

    .line 174
    goto :goto_4
.end method

.method private updateRatingDrawable()V
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating rating drawable, progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", user rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getUserRating()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getUserRating()I

    move-result v0

    if-lez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->userStars:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setStepSize(F)V

    .line 356
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->updateSecondaryProgress()V

    .line 357
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->netflixStars:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setStepSize(F)V

    goto :goto_0
.end method

.method private updateSecondaryProgress()V
    .locals 4

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getProgressPerStar()F

    move-result v0

    .line 368
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 370
    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 371
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v1, "NetflixRatingBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting secondary progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setSecondaryProgress(I)V

    .line 376
    :cond_1
    return-void
.end method


# virtual methods
.method protected getNetflixStarRatingDrawableId()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0201fa

    return v0
.end method

.method protected getUserStarRatingDrawableId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0201fd

    return v0
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 184
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->dispatchedCallback:Z

    .line 185
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v1, "NetflixRatingBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rating changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", from user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getUserRating()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 192
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getProgressPerStar()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 193
    const-string/jumbo v2, "NetflixRatingBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setProgress(I)V

    .line 196
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->handleUserUpate(I)V

    .line 201
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->updateRatingDrawable()V

    .line 203
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->dispatchRatingChange(Z)V

    .line 204
    return-void

    .line 198
    :cond_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->currRating:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->isDragging()Z

    move-result v0

    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v1, "NetflixRatingBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDragging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->dispatchedCallback:Z

    .line 225
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 227
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->dispatchedCallback:Z

    if-nez v2, :cond_1

    .line 229
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getNetflixActivitySafely(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 248
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 235
    :pswitch_1
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v3, "Report rate action started"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getRating()F

    move-result v0

    invoke-virtual {p0, p0, v0, v4}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    goto :goto_0

    .line 242
    :pswitch_3
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getRating()F

    move-result v0

    invoke-virtual {p0, p0, v0, v4}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setOnNetflixRatingBarChangeListener(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->onNetflixRatingBarChangeListener:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$OnNetflixRatingBarChangeListener;

    .line 112
    return-void
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Use setOnNetflixRatingBarChangeListener instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V
    .locals 3

    .prologue
    .line 275
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RatingBarDataProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ratable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Data provider is null - this means user won\'t be able to rate this title"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    if-nez p2, :cond_1

    .line 300
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->provider:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    .line 287
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getUserRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 291
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using user rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getUserRating()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getUserRating()F

    move-result v0

    .line 298
    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setRating(F)V

    .line 299
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->updateRatingDrawable()V

    goto :goto_0

    .line 294
    :cond_2
    const-string/jumbo v0, "NetflixRatingBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using predicted rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getPredictedRating()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->ratableObject:Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->getPredictedRating()F

    move-result v0

    goto :goto_1
.end method
