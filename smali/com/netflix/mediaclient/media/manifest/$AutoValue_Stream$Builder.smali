.class final Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;
.super Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:Ljava/lang/Integer;

.field private contentProfile:Ljava/lang/String;

.field private downloadableId:Ljava/lang/String;

.field private framerateScale:Ljava/lang/Integer;

.field private framerateValue:Ljava/lang/Integer;

.field private isDrm:Ljava/lang/Boolean;

.field private moov:Lo/su;

.field private newStreamId:Ljava/lang/String;

.field private peakBitrate:Ljava/lang/Integer;

.field private resH:Ljava/lang/Integer;

.field private resW:Ljava/lang/Integer;

.field private sidx:Lo/su;

.field private size:Ljava/lang/Long;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end field

.field private vmaf:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/media/manifest/Stream;)V
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;-><init>()V

    .line 287
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->bitrate:Ljava/lang/Integer;

    .line 288
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->urls:Ljava/util/List;

    .line 289
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->contentProfile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->contentProfile:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->isDrm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->isDrm:Ljava/lang/Boolean;

    .line 291
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->size:Ljava/lang/Long;

    .line 292
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->downloadableId:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->newStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->newStreamId:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->moov:Lo/su;

    .line 295
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->sidx:Lo/su;

    .line 296
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->vmaf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->vmaf:Ljava/lang/Integer;

    .line 297
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->resW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resW:Ljava/lang/Integer;

    .line 298
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->peakBitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->peakBitrate:Ljava/lang/Integer;

    .line 299
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resH:Ljava/lang/Integer;

    .line 300
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateValue:Ljava/lang/Integer;

    .line 301
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateScale()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateScale:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/media/manifest/Stream;Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;-><init>(Lcom/netflix/mediaclient/media/manifest/Stream;)V

    return-void
.end method


# virtual methods
.method public bitrate(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->bitrate:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/netflix/mediaclient/media/manifest/Stream;
    .locals 20

    move-object/from16 v0, p0

    .line 393
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->bitrate:Ljava/lang/Integer;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bitrate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->urls:Ljava/util/List;

    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " urls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    :cond_1
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->contentProfile:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentProfile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->isDrm:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDrm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    :cond_3
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->size:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    :cond_4
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->downloadableId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadableId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    :cond_5
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->newStreamId:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newStreamId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    :cond_6
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->vmaf:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vmaf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    :cond_7
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resW:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_8
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->peakBitrate:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " peakBitrate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    :cond_9
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resH:Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    :cond_a
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateValue:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " framerateValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    :cond_b
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateScale:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " framerateScale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 435
    new-instance v1, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;

    move-object v3, v1

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->bitrate:Ljava/lang/Integer;

    .line 436
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->urls:Ljava/util/List;

    iget-object v6, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->contentProfile:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->isDrm:Ljava/lang/Boolean;

    .line 439
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->size:Ljava/lang/Long;

    .line 440
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->downloadableId:Ljava/lang/String;

    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->newStreamId:Ljava/lang/String;

    iget-object v12, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->moov:Lo/su;

    iget-object v13, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->sidx:Lo/su;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->vmaf:Ljava/lang/Integer;

    .line 445
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resW:Ljava/lang/Integer;

    .line 446
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->peakBitrate:Ljava/lang/Integer;

    .line 447
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resH:Ljava/lang/Integer;

    .line 448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateValue:Ljava/lang/Integer;

    .line 449
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateScale:Ljava/lang/Integer;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-direct/range {v3 .. v19}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;-><init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V

    return-object v1

    .line 433
    :cond_d
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

.method public contentProfile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 321
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->contentProfile:Ljava/lang/String;

    return-object p0

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null contentProfile"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadableId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 339
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->downloadableId:Ljava/lang/String;

    return-object p0

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null downloadableId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public framerateScale(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateScale:Ljava/lang/Integer;

    return-object p0
.end method

.method public framerateValue(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->framerateValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public isDrm(Z)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 326
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->isDrm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public moov(Lo/su;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->moov:Lo/su;

    return-object p0
.end method

.method public newStreamId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 347
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->newStreamId:Ljava/lang/String;

    return-object p0

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null newStreamId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peakBitrate(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->peakBitrate:Ljava/lang/Integer;

    return-object p0
.end method

.method public resH(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resH:Ljava/lang/Integer;

    return-object p0
.end method

.method public resW(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->resW:Ljava/lang/Integer;

    return-object p0
.end method

.method public sidx(Lo/su;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->sidx:Lo/su;

    return-object p0
.end method

.method public size(J)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 331
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public urls(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/Stream$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 313
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->urls:Ljava/util/List;

    return-object p0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null urls"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public vmaf(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 0

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;->vmaf:Ljava/lang/Integer;

    return-object p0
.end method
