.class final Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;
.super Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/netflix/model/leafs/originals/interactive/Action;

.field private assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

.field private choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

.field private defaultChoiceIndex:Ljava/lang/Integer;

.field private endMs:Ljava/lang/Long;

.field private ftueText:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private isFallbackTutorial:Ljava/lang/Boolean;

.field private layoutType:Ljava/lang/String;

.field private momentType:Ljava/lang/String;

.field private nextSegmentId:Ljava/lang/String;

.field private precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

.field private startMs:Ljava/lang/Long;

.field private text:Ljava/lang/String;

.field private timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

.field private trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

.field private uiDisplayMS:Ljava/lang/Long;

.field private uiHideMS:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;-><init>()V

    .line 287
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->id:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->startMs:Ljava/lang/Long;

    .line 289
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->endMs:Ljava/lang/Long;

    .line 290
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    .line 291
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->momentType:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isFallbackTutorial()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->isFallbackTutorial:Ljava/lang/Boolean;

    .line 293
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    .line 294
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->layoutType:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiDisplayMS()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiDisplayMS:Ljava/lang/Long;

    .line 296
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiHideMS()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiHideMS:Ljava/lang/Long;

    .line 297
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->defaultChoiceIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->defaultChoiceIndex:Ljava/lang/Integer;

    .line 298
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->choices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->choices:Ljava/util/List;

    .line 299
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    .line 300
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    .line 301
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    .line 302
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->nextSegmentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->nextSegmentId:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->precondition()Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    .line 304
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->ftueText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->ftueText:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->text()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->text:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    return-void
.end method


# virtual methods
.method public action(Lcom/netflix/model/leafs/originals/interactive/Action;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    return-object p0
.end method

.method public assetManifest(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    return-object p0
.end method

.method public build()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 24

    move-object/from16 v0, p0

    .line 429
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    :cond_0
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->startMs:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    :cond_1
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->endMs:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " endMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_2
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->isFallbackTutorial:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFallbackTutorial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    :cond_3
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiDisplayMS:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uiDisplayMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    :cond_4
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiHideMS:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uiHideMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_5
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->defaultChoiceIndex:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultChoiceIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 453
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Moment;

    move-object v3, v1

    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->startMs:Ljava/lang/Long;

    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->endMs:Ljava/lang/Long;

    iget-object v7, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->momentType:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->isFallbackTutorial:Ljava/lang/Boolean;

    .line 459
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    iget-object v11, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->layoutType:Ljava/lang/String;

    iget-object v12, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiDisplayMS:Ljava/lang/Long;

    iget-object v13, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiHideMS:Ljava/lang/Long;

    iget-object v14, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->defaultChoiceIndex:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->choices:Ljava/util/List;

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->nextSegmentId:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->ftueText:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->text:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-object/from16 v23, v2

    invoke-direct/range {v3 .. v23}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Moment;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/Action;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Condition;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    return-object v1

    .line 451
    :cond_7
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

.method public choices(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->choices:Ljava/util/List;

    return-object p0
.end method

.method public config(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    return-object p0
.end method

.method public defaultChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 378
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->defaultChoiceIndex:Ljava/lang/Integer;

    return-object p0

    .line 376
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null defaultChoiceIndex"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->endMs:Ljava/lang/Long;

    return-object p0

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null endMs"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ftueText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->ftueText:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->id:Ljava/lang/String;

    return-object p0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public impressionData(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object p0
.end method

.method public isFallbackTutorial(Z)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->isFallbackTutorial:Ljava/lang/Boolean;

    return-object p0
.end method

.method public layoutType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->layoutType:Ljava/lang/String;

    return-object p0
.end method

.method public momentType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->momentType:Ljava/lang/String;

    return-object p0
.end method

.method public nextSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->nextSegmentId:Ljava/lang/String;

    return-object p0
.end method

.method public precondition(Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    return-object p0
.end method

.method public startMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 321
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->startMs:Ljava/lang/Long;

    return-object p0

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null startMs"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public text(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public timeoutSegment(Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    return-object p0
.end method

.method public trackingInfo(Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    return-object p0
.end method

.method public uiDisplayMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiDisplayMS:Ljava/lang/Long;

    return-object p0

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null uiDisplayMS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uiHideMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 370
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;->uiHideMS:Ljava/lang/Long;

    return-object p0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null uiHideMS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
