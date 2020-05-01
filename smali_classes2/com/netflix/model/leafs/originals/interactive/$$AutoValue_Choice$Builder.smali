.class final Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;
.super Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

.field private background:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private code:Ljava/lang/String;

.field private icon:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private id:Ljava/lang/String;

.field private image:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private optionType:Ljava/lang/String;

.field private preconditionId:Ljava/lang/String;

.field private segmentGroup:Ljava/lang/String;

.field private segmentId:Ljava/lang/String;

.field private startTimeMs:Ljava/lang/Integer;

.field private text:Ljava/lang/String;

.field private trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;-><init>()V

    .line 263
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->id:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentId:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentGroup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentGroup:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->startTimeMs:Ljava/lang/Integer;

    .line 267
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->text:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->optionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->optionType:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->code:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    .line 271
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    .line 272
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    .line 273
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->preconditionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->preconditionId:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->image()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->image:Ljava/util/Map;

    .line 275
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->background:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 276
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->icon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->icon:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/Choice;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/model/leafs/originals/interactive/Choice;
    .locals 18

    move-object/from16 v0, p0

    .line 354
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    :cond_0
    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->startTimeMs:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startTimeMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Choice;

    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentId:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentGroup:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->startTimeMs:Ljava/lang/Integer;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->text:Ljava/lang/String;

    iget-object v9, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->optionType:Ljava/lang/String;

    iget-object v10, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->code:Ljava/lang/String;

    iget-object v11, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    iget-object v12, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    iget-object v13, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    iget-object v14, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->preconditionId:Ljava/lang/String;

    iget-object v15, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->image:Ljava/util/Map;

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->background:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->icon:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Choice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)V

    return-object v1

    .line 361
    :cond_2
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

.method public setAction(Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->action:Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    return-object p0
.end method

.method public setBackground(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->background:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->icon:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->id:Ljava/lang/String;

    return-object p0

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImage(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->image:Ljava/util/Map;

    return-object p0
.end method

.method public setImpressionData(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object p0
.end method

.method public setOptionType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->optionType:Ljava/lang/String;

    return-object p0
.end method

.method public setPreconditionId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->preconditionId:Ljava/lang/String;

    return-object p0
.end method

.method public setSegmentGroup(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentGroup:Ljava/lang/String;

    return-object p0
.end method

.method public setSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->segmentId:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTimeMs(I)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->startTimeMs:Ljava/lang/Integer;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingInfo(Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    return-object p0
.end method
