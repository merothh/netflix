.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;
.super Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;
    }
.end annotation


# instance fields
.field private final autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

.field private final choiceDisplayRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;"
        }
    .end annotation
.end field

.field private final choiceDisplayStrategy:Ljava/lang/String;

.field private final defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

.field private final defaultChoiceStrategy:Ljava/lang/String;

.field private final disableToggleDefault:Ljava/lang/Boolean;

.field private final forceDefaultOnInitialVisit:Ljava/lang/Boolean;

.field private final is4By3:Z

.field private final isInterstitialPostplay:Z

.field private final pausePlaybackOnEnter:Z

.field private final queueSelectedChoice:Ljava/lang/Boolean;

.field private final randomizeDefault:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->pausePlaybackOnEnter:Z

    .line 49
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayStrategy:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 53
    iput-object p3, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayRules:Ljava/util/List;

    .line 54
    iput-boolean p4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->isInterstitialPostplay:Z

    .line 55
    iput-object p5, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceStrategy:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    .line 57
    iput-object p7, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    .line 58
    iput-object p8, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->queueSelectedChoice:Ljava/lang/Boolean;

    .line 59
    iput-boolean p9, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->is4By3:Z

    .line 60
    iput-object p10, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->randomizeDefault:Ljava/lang/Boolean;

    .line 61
    iput-object p11, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    .line 62
    iput-object p12, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->disableToggleDefault:Ljava/lang/Boolean;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null choiceDisplayRules"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public autoSelectChoiceOnTimeout()Ljava/lang/Boolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    return-object v0
.end method

.method public choiceDisplayRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayRules:Ljava/util/List;

    return-object v0
.end method

.method public choiceDisplayStrategy()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public defaultChoiceStrategy()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public disableToggleDefault()Ljava/lang/Boolean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->disableToggleDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 156
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 157
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    .line 158
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->pausePlaybackOnEnter:Z

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->pausePlaybackOnEnter()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayStrategy:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayStrategy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayRules:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->isInterstitialPostplay:Z

    .line 161
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->isInterstitialPostplay()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceStrategy:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceStrategy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_1
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->autoSelectChoiceOnTimeout()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->autoSelectChoiceOnTimeout()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_3
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->queueSelectedChoice:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 165
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->is4By3:Z

    .line 166
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->is4By3()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->randomizeDefault:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 167
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->randomizeDefault()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->randomizeDefault()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_5
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 168
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->forceDefaultOnInitialVisit()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->forceDefaultOnInitialVisit()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_6
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->disableToggleDefault:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 169
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->disableToggleDefault()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->disableToggleDefault()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_a
    return v2
.end method

.method public forceDefaultOnInitialVisit()Ljava/lang/Boolean;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 178
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->pausePlaybackOnEnter:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    .line 180
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayStrategy:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 182
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 184
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->isInterstitialPostplay:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 186
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceStrategy:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 188
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v4

    :goto_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 190
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    :goto_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 192
    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->queueSelectedChoice:Ljava/lang/Boolean;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    :goto_6
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 194
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->is4By3:Z

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    const/16 v1, 0x4d5

    :goto_7
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 196
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->randomizeDefault:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_8
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 198
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_9
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 200
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->disableToggleDefault:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v5

    :goto_a
    xor-int/2addr v0, v5

    return v0
.end method

.method public is4By3()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->is4By3:Z

    return v0
.end method

.method public isInterstitialPostplay()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->isInterstitialPostplay:Z

    return v0
.end method

.method public pausePlaybackOnEnter()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->pausePlaybackOnEnter:Z

    return v0
.end method

.method public queueSelectedChoice()Ljava/lang/Boolean;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->queueSelectedChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public randomizeDefault()Ljava/lang/Boolean;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->randomizeDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toBuilder()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$Builder;
    .locals 2

    .line 206
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractiveSceneConfig{pausePlaybackOnEnter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->pausePlaybackOnEnter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", choiceDisplayStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayStrategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", choiceDisplayRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->choiceDisplayRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInterstitialPostplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->isInterstitialPostplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultChoiceStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceStrategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultChoiceOverrideChoiceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoSelectChoiceOnTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->autoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queueSelectedChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->queueSelectedChoice:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is4By3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->is4By3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", randomizeDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->randomizeDefault:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceDefaultOnInitialVisit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->forceDefaultOnInitialVisit:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableToggleDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveSceneConfig;->disableToggleDefault:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
