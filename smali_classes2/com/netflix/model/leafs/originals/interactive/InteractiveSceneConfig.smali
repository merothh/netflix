.class public abstract Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;,
        Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;,
        Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$DefaultChoiceStrategyType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emptyConfig()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
    .locals 2

    .line 32
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;->is4By3(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;->isInterstitialPostplay(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;->pausePlaybackOnEnter(Z)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;->choiceDisplayRules(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->setDefaultChoiceDisplayRules(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->setDefaultPausePlaybackOnEnter(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->setDefaultIs4By3(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->setDefaultIsInterstitialPostplay(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract autoSelectChoiceOnTimeout()Ljava/lang/Boolean;
.end method

.method public abstract choiceDisplayRules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract choiceDisplayStrategy()Ljava/lang/String;
.end method

.method public abstract defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;
.end method

.method public abstract defaultChoiceStrategy()Ljava/lang/String;
.end method

.method public abstract disableToggleDefault()Ljava/lang/Boolean;
.end method

.method public abstract forceDefaultOnInitialVisit()Ljava/lang/Boolean;
.end method

.method public abstract is4By3()Z
.end method

.method public abstract isInterstitialPostplay()Z
.end method

.method public abstract pausePlaybackOnEnter()Z
.end method

.method public preconditionChoice(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;

    .line 97
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;->preconditionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;->choices()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public abstract queueSelectedChoice()Ljava/lang/Boolean;
.end method

.method public abstract randomizeDefault()Ljava/lang/Boolean;
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
.end method
