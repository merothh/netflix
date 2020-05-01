.class final Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;
.super Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private drmHeader:Lo/sw;

.field private flavor:Ljava/lang/String;

.field private license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

.field private maxCroppedHeight:Ljava/lang/Integer;

.field private maxCroppedWidth:Ljava/lang/Integer;

.field private maxHeight:Ljava/lang/Integer;

.field private maxWidth:Ljava/lang/Integer;

.field private newTrackId:Ljava/lang/String;

.field private pixelAspectX:Ljava/lang/Integer;

.field private pixelAspectY:Ljava/lang/Integer;

.field private profile:Ljava/lang/String;

.field private streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private trackId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/media/manifest/VideoTrack;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectY:Ljava/lang/Integer;

    .line 259
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectX:Ljava/lang/Integer;

    .line 260
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->flavor:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedWidth:Ljava/lang/Integer;

    .line 262
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxHeight:Ljava/lang/Integer;

    .line 263
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedHeight:Ljava/lang/Integer;

    .line 264
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxWidth:Ljava/lang/Integer;

    .line 265
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->streams:Ljava/util/List;

    .line 266
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->profile:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->trackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->trackId:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->newTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->newTrackId:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->drmHeader:Lo/sw;

    .line 270
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/media/manifest/VideoTrack;Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;-><init>(Lcom/netflix/mediaclient/media/manifest/VideoTrack;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/media/manifest/VideoTrack;
    .locals 17

    move-object/from16 v0, p0

    .line 352
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectY:Ljava/lang/Integer;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pixelAspectY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectX:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pixelAspectX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    :cond_1
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedWidth:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxCroppedWidth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxHeight:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    :cond_3
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedHeight:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxCroppedHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_4
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxWidth:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxWidth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    :cond_5
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->streams:Ljava/util/List;

    if-nez v1, :cond_6

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " streams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_6
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->profile:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_7
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->trackId:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trackId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    :cond_8
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->newTrackId:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newTrackId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 385
    new-instance v1, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectY:Ljava/lang/Integer;

    .line 386
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectX:Ljava/lang/Integer;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->flavor:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedWidth:Ljava/lang/Integer;

    .line 389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxHeight:Ljava/lang/Integer;

    .line 390
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedHeight:Ljava/lang/Integer;

    .line 391
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxWidth:Ljava/lang/Integer;

    .line 392
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->streams:Ljava/util/List;

    iget-object v12, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->profile:Ljava/lang/String;

    iget-object v13, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->trackId:Ljava/lang/String;

    iget-object v14, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->newTrackId:Ljava/lang/String;

    iget-object v15, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->drmHeader:Lo/sw;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;-><init>(IILjava/lang/String;IIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/sw;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    return-object v1

    .line 383
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drmHeader(Lo/sw;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->drmHeader:Lo/sw;

    return-object p0
.end method

.method public flavor(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->flavor:Ljava/lang/String;

    return-object p0
.end method

.method public license(Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-object p0
.end method

.method public maxCroppedHeight(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxCroppedWidth(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxCroppedWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxHeight(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxWidth(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->maxWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public newTrackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 336
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->newTrackId:Ljava/lang/String;

    return-object p0

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null newTrackId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pixelAspectX(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectX:Ljava/lang/Integer;

    return-object p0
.end method

.method public pixelAspectY(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 0

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->pixelAspectY:Ljava/lang/Integer;

    return-object p0
.end method

.method public profile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 320
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->profile:Ljava/lang/String;

    return-object p0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null profile"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public streams(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 312
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->streams:Ljava/util/List;

    return-object p0

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null streams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 328
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;->trackId:Ljava/lang/String;

    return-object p0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null trackId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
