.class public abstract Lcom/netflix/model/leafs/originals/interactive/Moment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;,
        Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;,
        Lcom/netflix/model/leafs/originals/interactive/Moment$TYPE;
    }
.end annotation


# instance fields
.field private mSubType:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mType:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mSubType:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 1

    .line 211
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;-><init>()V

    return-object v0
.end method

.method private declared-synchronized setMomentType()V
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ":"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mSubType:Ljava/lang/String;

    .line 75
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const-string p0, ""

    .line 157
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultUiDisplayMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultUiHideMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultStartMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultEndMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultDefaultChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultIsFallbackTutorial(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    .line 164
    invoke-static {}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->emptyConfig()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->setDefaultConfig(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract action()Lcom/netflix/model/leafs/originals/interactive/Action;
.end method

.method public abstract assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;
.end method

.method public abstract choices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
.end method

.method public abstract defaultChoiceIndex()Ljava/lang/Integer;
.end method

.method public abstract endMs()Ljava/lang/Long;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/Moment;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 174
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/Moment;

    .line 175
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v3

    .line 177
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    if-nez v3, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    if-nez v4, :cond_3

    .line 183
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method public abstract ftueText()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xf4243

    xor-int/2addr v3, v4

    mul-int v3, v3, v4

    .line 197
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    mul-int v3, v3, v4

    .line 199
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    mul-int v3, v3, v4

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v3

    mul-int v0, v0, v4

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    if-nez v2, :cond_2

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_2
    xor-int/2addr v0, v5

    return v0
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
.end method

.method public isFakeChoicePoint()Z
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->choices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/Choice;

    .line 124
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isFallbackTutorial()Z
.end method

.method public isInterstitialPostPlay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->isInterstitialPostplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract layoutType()Ljava/lang/String;
.end method

.method abstract momentType()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end method

.method public abstract nextSegmentId()Ljava/lang/String;
.end method

.method public abstract precondition()Lcom/netflix/model/leafs/originals/interactive/condition/Condition;
.end method

.method public abstract startMs()Ljava/lang/Long;
.end method

.method public subType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mSubType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->setMomentType()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract text()Ljava/lang/String;
.end method

.method public abstract timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeoutSegment"
    .end annotation
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->setMomentType()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/Moment;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract uiDisplayMS()Ljava/lang/Long;
.end method

.method public abstract uiHideMS()Ljava/lang/Long;
.end method
