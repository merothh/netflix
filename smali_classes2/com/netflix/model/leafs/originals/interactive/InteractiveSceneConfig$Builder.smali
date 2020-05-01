.class public abstract Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoSelectChoiceOnTimeout(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
.end method

.method public abstract choiceDisplayRules(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;"
        }
    .end annotation
.end method

.method public abstract choiceDisplayStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract defaultChoiceOverrideChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract defaultChoiceStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract disableToggleDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract forceDefaultOnInitialVisit(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract is4By3(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract isInterstitialPostplay(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract pausePlaybackOnEnter(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract queueSelectedChoice(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method

.method public abstract randomizeDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method
