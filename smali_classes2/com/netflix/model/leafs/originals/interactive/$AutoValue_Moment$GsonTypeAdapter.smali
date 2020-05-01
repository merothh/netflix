.class public final Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/Moment;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final assetManifestAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/AssetManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final choicesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final configAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAction:Lcom/netflix/model/leafs/originals/interactive/Action;

.field private defaultAssetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

.field private final defaultChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private defaultConfig:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

.field private defaultDefaultChoiceIndex:Ljava/lang/Integer;

.field private defaultEndMs:Ljava/lang/Long;

.field private defaultFtueText:Ljava/lang/String;

.field private defaultId:Ljava/lang/String;

.field private defaultImpressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private defaultIsFallbackTutorial:Z

.field private defaultLayoutType:Ljava/lang/String;

.field private defaultMomentType:Ljava/lang/String;

.field private defaultNextSegmentId:Ljava/lang/String;

.field private defaultPrecondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

.field private defaultStartMs:Ljava/lang/Long;

.field private defaultText:Ljava/lang/String;

.field private defaultTimeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

.field private defaultTrackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

.field private defaultUiDisplayMS:Ljava/lang/Long;

.field private defaultUiHideMS:Ljava/lang/Long;

.field private final endMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final ftueTextAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final idAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final impressionDataAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/ImpressionData;",
            ">;"
        }
    .end annotation
.end field

.field private final isFallbackTutorialAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final momentTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nextSegmentIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preconditionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final startMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final textAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutSegmentAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingInfoAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final uiDisplayMSAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final uiHideMSAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultStartMs:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultEndMs:Ljava/lang/Long;

    .line 54
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAssetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    .line 55
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultMomentType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultIsFallbackTutorial:Z

    .line 57
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAction:Lcom/netflix/model/leafs/originals/interactive/Action;

    .line 58
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultLayoutType:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiDisplayMS:Ljava/lang/Long;

    .line 60
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiHideMS:Ljava/lang/Long;

    .line 61
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultDefaultChoiceIndex:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 63
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultConfig:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    .line 64
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTrackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    .line 65
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTimeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    .line 66
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultNextSegmentId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultPrecondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    .line 68
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultFtueText:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultText:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultImpressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    .line 72
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    .line 73
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->startMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 74
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->endMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 75
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AssetManifestAdapter;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/AssetManifestAdapter;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->assetManifestAdapter:Lcom/google/gson/TypeAdapter;

    .line 76
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->momentTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 77
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->isFallbackTutorialAdapter:Lcom/google/gson/TypeAdapter;

    .line 78
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->actionAdapter:Lcom/google/gson/TypeAdapter;

    .line 79
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->layoutTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 80
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiDisplayMSAdapter:Lcom/google/gson/TypeAdapter;

    .line 81
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiHideMSAdapter:Lcom/google/gson/TypeAdapter;

    .line 82
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    .line 83
    const-class v0, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/model/leafs/originals/interactive/Choice;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    .line 84
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->configAdapter:Lcom/google/gson/TypeAdapter;

    .line 85
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/TrackingInfoAdapter;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/TrackingInfoAdapter;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    .line 86
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->timeoutSegmentAdapter:Lcom/google/gson/TypeAdapter;

    .line 87
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->nextSegmentIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 88
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->preconditionAdapter:Lcom/google/gson/TypeAdapter;

    .line 89
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->ftueTextAdapter:Lcom/google/gson/TypeAdapter;

    .line 90
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->textAdapter:Lcom/google/gson/TypeAdapter;

    .line 91
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 148
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 149
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    .line 150
    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultStartMs:Ljava/lang/Long;

    .line 151
    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultEndMs:Ljava/lang/Long;

    .line 152
    iget-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAssetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    .line 153
    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultMomentType:Ljava/lang/String;

    .line 154
    iget-boolean v7, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultIsFallbackTutorial:Z

    .line 155
    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAction:Lcom/netflix/model/leafs/originals/interactive/Action;

    .line 156
    iget-object v9, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultLayoutType:Ljava/lang/String;

    .line 157
    iget-object v10, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiDisplayMS:Ljava/lang/Long;

    .line 158
    iget-object v11, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiHideMS:Ljava/lang/Long;

    .line 159
    iget-object v12, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultDefaultChoiceIndex:Ljava/lang/Integer;

    .line 160
    iget-object v13, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    .line 161
    iget-object v14, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultConfig:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    .line 162
    iget-object v15, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTrackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-object/from16 v16, v2

    .line 163
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTimeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-object/from16 v17, v2

    .line 164
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultNextSegmentId:Ljava/lang/String;

    move-object/from16 v18, v2

    .line 165
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultPrecondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-object/from16 v19, v2

    .line 166
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultFtueText:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 167
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultText:Ljava/lang/String;

    move-object/from16 v21, v2

    .line 168
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultImpressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-object/from16 v42, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    move-object/from16 v23, v16

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    .line 169
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "isFallbackTutorial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "assetManifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "choices"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "ftueText"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "defaultChoiceIndex"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "nextSegmentId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "layoutType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "endMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_b
    const-string v4, "impressionData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x13

    goto :goto_1

    :sswitch_c
    const-string v4, "precondition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x10

    goto :goto_1

    :sswitch_d
    const-string v4, "timeoutSegment"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xe

    goto :goto_1

    :sswitch_e
    const-string v4, "uiDisplayMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_f
    const-string v4, "config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_10
    const-string v4, "uiHideMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_11
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_12
    const-string v4, "trackingInfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_13
    const-string v4, "startMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 253
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-object/from16 v42, v2

    goto/16 :goto_0

    .line 249
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->textAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v41, v2

    goto/16 :goto_0

    .line 245
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->ftueTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v40, v2

    goto/16 :goto_0

    .line 241
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->preconditionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-object/from16 v39, v2

    goto/16 :goto_0

    .line 237
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->nextSegmentIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v38, v2

    goto/16 :goto_0

    .line 233
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->timeoutSegmentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-object/from16 v37, v2

    goto/16 :goto_0

    .line 229
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-object/from16 v36, v2

    goto/16 :goto_0

    .line 225
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->configAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-object/from16 v35, v2

    goto/16 :goto_0

    .line 221
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v34, v2

    goto/16 :goto_0

    .line 217
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v33, v2

    goto/16 :goto_0

    .line 213
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiHideMSAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v32, v2

    goto/16 :goto_0

    .line 209
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiDisplayMSAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v31, v2

    goto/16 :goto_0

    .line 205
    :pswitch_c
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->layoutTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v30, v2

    goto/16 :goto_0

    .line 201
    :pswitch_d
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->actionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/Action;

    move-object/from16 v29, v2

    goto/16 :goto_0

    .line 197
    :pswitch_e
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->isFallbackTutorialAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_0

    .line 193
    :pswitch_f
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->momentTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v27, v2

    goto/16 :goto_0

    .line 189
    :pswitch_10
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->assetManifestAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-object/from16 v26, v2

    goto/16 :goto_0

    .line 185
    :pswitch_11
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->endMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v25, v2

    goto/16 :goto_0

    .line 181
    :pswitch_12
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->startMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v24, v2

    goto/16 :goto_0

    .line 177
    :pswitch_13
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v23, v2

    goto/16 :goto_0

    .line 261
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 262
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Moment;

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v42}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Moment;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/Action;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Condition;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7114c258 -> :sswitch_13
        -0x704f3bfb -> :sswitch_12
        -0x54d081ca -> :sswitch_11
        -0x52d4a5e4 -> :sswitch_10
        -0x50c07cbe -> :sswitch_f
        -0x3b26ce4c -> :sswitch_e
        -0x34e0b56e -> :sswitch_d
        -0x26ccfe28 -> :sswitch_c
        -0x6c936ad -> :sswitch_b
        0xd1b -> :sswitch_a
        0x36452d -> :sswitch_9
        0x368f3a -> :sswitch_8
        0x5c2c7e1 -> :sswitch_7
        0x145d5984 -> :sswitch_6
        0x1849ddfb -> :sswitch_5
        0x1eb846b0 -> :sswitch_4
        0x2968ba2b -> :sswitch_3
        0x2cce56f2 -> :sswitch_2
        0x52ce8d3f -> :sswitch_1
        0x5c0bf1aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAction(Lcom/netflix/model/leafs/originals/interactive/Action;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAction:Lcom/netflix/model/leafs/originals/interactive/Action;

    return-object p0
.end method

.method public setDefaultAssetManifest(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultAssetManifest:Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    return-object p0
.end method

.method public setDefaultChoices(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoices:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultConfig(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultConfig:Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    return-object p0
.end method

.method public setDefaultDefaultChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultDefaultChoiceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDefaultEndMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultEndMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setDefaultFtueText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultFtueText:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultImpressionData(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultImpressionData:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object p0
.end method

.method public setDefaultIsFallbackTutorial(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultIsFallbackTutorial:Z

    return-object p0
.end method

.method public setDefaultLayoutType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultLayoutType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultMomentType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultMomentType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultNextSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultNextSegmentId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultPrecondition(Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultPrecondition:Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    return-object p0
.end method

.method public setDefaultStartMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultStartMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setDefaultText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultText:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultTimeoutSegment(Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTimeoutSegment:Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    return-object p0
.end method

.method public setDefaultTrackingInfo(Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultTrackingInfo:Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    return-object p0
.end method

.method public setDefaultUiDisplayMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiDisplayMS:Ljava/lang/Long;

    return-object p0
.end method

.method public setDefaultUiHideMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultUiHideMS:Ljava/lang/Long;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 2

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "id"

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 101
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "startMs"

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 103
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->startMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "endMs"

    .line 104
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 105
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->endMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "assetManifest"

    .line 106
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->assetManifestAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 109
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->momentTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->momentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isFallbackTutorial"

    .line 110
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 111
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->isFallbackTutorialAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isFallbackTutorial()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "action"

    .line 112
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 113
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->actionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "layoutType"

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 115
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->layoutTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->layoutType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "uiDisplayMS"

    .line 116
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 117
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiDisplayMSAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiDisplayMS()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "uiHideMS"

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 119
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->uiHideMSAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiHideMS()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "defaultChoiceIndex"

    .line 120
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 121
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->defaultChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->defaultChoiceIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "choices"

    .line 122
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 123
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->choicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->choices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "config"

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 125
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->configAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "trackingInfo"

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 127
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "timeoutSegment"

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 129
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->timeoutSegmentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "nextSegmentId"

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 131
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->nextSegmentIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->nextSegmentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "precondition"

    .line 132
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 133
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->preconditionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->precondition()Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ftueText"

    .line 134
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 135
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->ftueTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->ftueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "text"

    .line 136
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 137
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->textAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "impressionData"

    .line 138
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 139
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/Moment;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Moment$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    return-void
.end method
