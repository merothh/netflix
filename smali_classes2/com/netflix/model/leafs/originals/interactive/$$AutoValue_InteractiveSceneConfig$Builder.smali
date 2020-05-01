.class final Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;
.super Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

.field private choiceDisplayRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;"
        }
    .end annotation
.end field

.field private choiceDisplayStrategy:Ljava/lang/String;

.field private defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

.field private defaultChoiceStrategy:Ljava/lang/String;

.field private disableToggleDefault:Ljava/lang/Boolean;

.field private forceDefaultOnInitialVisit:Ljava/lang/Boolean;

.field private is4By3:Ljava/lang/Boolean;

.field private isInterstitialPostplay:Ljava/lang/Boolean;

.field private pausePlaybackOnEnter:Ljava/lang/Boolean;

.field private queueSelectedChoice:Ljava/lang/Boolean;

.field private randomizeDefault:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->pausePlaybackOnEnter()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->pausePlaybackOnEnter:Ljava/lang/Boolean;

    .line 226
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayStrategy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayStrategy:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayRules:Ljava/util/List;

    .line 228
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->isInterstitialPostplay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->isInterstitialPostplay:Ljava/lang/Boolean;

    .line 229
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceStrategy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceStrategy:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    .line 231
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->autoSelectChoiceOnTimeout()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    .line 232
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->queueSelectedChoice:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->is4By3()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->is4By3:Ljava/lang/Boolean;

    .line 234
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->randomizeDefault()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->randomizeDefault:Ljava/lang/Boolean;

    .line 235
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->forceDefaultOnInitialVisit()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    .line 236
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->disableToggleDefault()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->disableToggleDefault:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$1;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)V

    return-void
.end method


# virtual methods
.method public autoSelectChoiceOnTimeout(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
    .locals 15

    .line 304
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->pausePlaybackOnEnter:Ljava/lang/Boolean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pausePlaybackOnEnter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayRules:Ljava/util/List;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " choiceDisplayRules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->isInterstitialPostplay:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isInterstitialPostplay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->is4By3:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is4By3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_InteractiveSceneConfig;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->pausePlaybackOnEnter:Ljava/lang/Boolean;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayStrategy:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayRules:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->isInterstitialPostplay:Ljava/lang/Boolean;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceStrategy:Ljava/lang/String;

    iget-object v8, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->queueSelectedChoice:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->is4By3:Ljava/lang/Boolean;

    .line 328
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v12, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->randomizeDefault:Ljava/lang/Boolean;

    iget-object v13, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    iget-object v14, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->disableToggleDefault:Ljava/lang/Boolean;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_InteractiveSceneConfig;-><init>(ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0

    .line 317
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public choiceDisplayRules(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 253
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayRules:Ljava/util/List;

    return-object p0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null choiceDisplayRules"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public choiceDisplayStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->choiceDisplayStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public defaultChoiceOverrideChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public defaultChoiceStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->defaultChoiceStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public disableToggleDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->disableToggleDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public forceDefaultOnInitialVisit(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    return-object p0
.end method

.method public is4By3(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 283
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->is4By3:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isInterstitialPostplay(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 258
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->isInterstitialPostplay:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pausePlaybackOnEnter(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->pausePlaybackOnEnter:Ljava/lang/Boolean;

    return-object p0
.end method

.method public queueSelectedChoice(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->queueSelectedChoice:Ljava/lang/Boolean;

    return-object p0
.end method

.method public randomizeDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->randomizeDefault:Ljava/lang/Boolean;

    return-object p0
.end method
