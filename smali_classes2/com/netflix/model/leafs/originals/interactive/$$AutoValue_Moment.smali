.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;
.super Lcom/netflix/model/leafs/originals/interactive/Moment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;
    }
.end annotation


# instance fields
.field private final action:Lcom/netflix/model/leafs/originals/interactive/Action;

.field private final assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

.field private final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

.field private final defaultChoiceIndex:Ljava/lang/Integer;

.field private final endMs:Ljava/lang/Long;

.field private final ftueText:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private final isFallbackTutorial:Z

.field private final layoutType:Ljava/lang/String;

.field private final momentType:Ljava/lang/String;

.field private final nextSegmentId:Ljava/lang/String;

.field private final precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

.field private final startMs:Ljava/lang/Long;

.field private final text:Ljava/lang/String;

.field private final timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

.field private final trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

.field private final uiDisplayMS:Ljava/lang/Long;

.field private final uiHideMS:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/Action;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Condition;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/netflix/model/leafs/originals/interactive/AssetManifest;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/model/leafs/originals/interactive/Action;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;",
            "Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/ImpressionData;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 74
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Moment;-><init>()V

    if-eqz v1, :cond_5

    .line 78
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 82
    iput-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->startMs:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 86
    iput-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->endMs:Ljava/lang/Long;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->momentType:Ljava/lang/String;

    move v1, p6

    .line 89
    iput-boolean v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->isFallbackTutorial:Z

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->layoutType:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 95
    iput-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiDisplayMS:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 99
    iput-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiHideMS:Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 103
    iput-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->defaultChoiceIndex:Ljava/lang/Integer;

    move-object/from16 v1, p12

    .line 104
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->choices:Ljava/util/List;

    move-object/from16 v1, p13

    .line 105
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-object/from16 v1, p14

    .line 106
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-object/from16 v1, p15

    .line 107
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-object/from16 v1, p16

    .line 108
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->nextSegmentId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 109
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-object/from16 v1, p18

    .line 110
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->ftueText:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 111
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->text:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 112
    iput-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-void

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null defaultChoiceIndex"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null uiHideMS"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null uiDisplayMS"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null endMs"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null startMs"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null id"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public action()Lcom/netflix/model/leafs/originals/interactive/Action;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    return-object v0
.end method

.method public assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    return-object v0
.end method

.method public choices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->choices:Ljava/util/List;

    return-object v0
.end method

.method public config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    return-object v0
.end method

.method public defaultChoiceIndex()Ljava/lang/Integer;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->defaultChoiceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public endMs()Ljava/lang/Long;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->endMs:Ljava/lang/Long;

    return-object v0
.end method

.method public ftueText()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->ftueText:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object v0
.end method

.method public isFallbackTutorial()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->isFallbackTutorial:Z

    return v0
.end method

.method public layoutType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->layoutType:Ljava/lang/String;

    return-object v0
.end method

.method momentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->momentType:Ljava/lang/String;

    return-object v0
.end method

.method public nextSegmentId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->nextSegmentId:Ljava/lang/String;

    return-object v0
.end method

.method public precondition()Lcom/netflix/model/leafs/originals/interactive/condition/Condition;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    return-object v0
.end method

.method public startMs()Ljava/lang/Long;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->startMs:Ljava/lang/Long;

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeoutSegment"
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    return-object v0
.end method

.method public toBuilder()Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .locals 2

    .line 260
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moment{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->startMs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->endMs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetManifest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->assetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", momentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->momentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFallbackTutorial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->isFallbackTutorial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->action:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->layoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uiDisplayMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiDisplayMS:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiHideMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiHideMS:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultChoiceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->defaultChoiceIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", choices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->choices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->config:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->timeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextSegmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->nextSegmentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", precondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->precondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ftueText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->ftueText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->impressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->trackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    return-object v0
.end method

.method public uiDisplayMS()Ljava/lang/Long;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiDisplayMS:Ljava/lang/Long;

    return-object v0
.end method

.method public uiHideMS()Ljava/lang/Long;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Moment;->uiHideMS:Ljava/lang/Long;

    return-object v0
.end method
