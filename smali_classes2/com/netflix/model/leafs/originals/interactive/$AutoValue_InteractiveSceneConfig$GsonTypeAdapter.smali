.class public final Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoSelectChoiceOnTimeoutAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final choiceDisplayRulesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final choiceDisplayStrategyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAutoSelectChoiceOnTimeout:Ljava/lang/Boolean;

.field private defaultChoiceDisplayRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;"
        }
    .end annotation
.end field

.field private defaultChoiceDisplayStrategy:Ljava/lang/String;

.field private final defaultChoiceOverrideChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultChoiceStrategyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDefaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

.field private defaultDefaultChoiceStrategy:Ljava/lang/String;

.field private defaultDisableToggleDefault:Ljava/lang/Boolean;

.field private defaultForceDefaultOnInitialVisit:Ljava/lang/Boolean;

.field private defaultIs4By3:Z

.field private defaultIsInterstitialPostplay:Z

.field private defaultPausePlaybackOnEnter:Z

.field private defaultQueueSelectedChoice:Ljava/lang/Boolean;

.field private defaultRandomizeDefault:Ljava/lang/Boolean;

.field private final disableToggleDefaultAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final forceDefaultOnInitialVisitAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final is4By3Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isInterstitialPostplayAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final pausePlaybackOnEnterAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final queueSelectedChoiceAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final randomizeDefaultAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultPausePlaybackOnEnter:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayStrategy:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayRules:Ljava/util/List;

    .line 45
    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIsInterstitialPostplay:Z

    .line 46
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceStrategy:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    .line 48
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultAutoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    .line 49
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultQueueSelectedChoice:Ljava/lang/Boolean;

    .line 50
    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIs4By3:Z

    .line 51
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultRandomizeDefault:Ljava/lang/Boolean;

    .line 52
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultForceDefaultOnInitialVisit:Ljava/lang/Boolean;

    .line 53
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDisableToggleDefault:Ljava/lang/Boolean;

    .line 55
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->pausePlaybackOnEnterAdapter:Lcom/google/gson/TypeAdapter;

    .line 56
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayStrategyAdapter:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayRulesAdapter:Lcom/google/gson/TypeAdapter;

    .line 58
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->isInterstitialPostplayAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceStrategyAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceOverrideChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->autoSelectChoiceOnTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    .line 62
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->queueSelectedChoiceAdapter:Lcom/google/gson/TypeAdapter;

    .line 63
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->is4By3Adapter:Lcom/google/gson/TypeAdapter;

    .line 64
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->randomizeDefaultAdapter:Lcom/google/gson/TypeAdapter;

    .line 65
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->forceDefaultOnInitialVisitAdapter:Lcom/google/gson/TypeAdapter;

    .line 66
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->disableToggleDefaultAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 108
    iget-boolean v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultPausePlaybackOnEnter:Z

    .line 109
    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayStrategy:Ljava/lang/String;

    .line 110
    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayRules:Ljava/util/List;

    .line 111
    iget-boolean v5, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIsInterstitialPostplay:Z

    .line 112
    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceStrategy:Ljava/lang/String;

    .line 113
    iget-object v7, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    .line 114
    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultAutoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    .line 115
    iget-object v9, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultQueueSelectedChoice:Ljava/lang/Boolean;

    .line 116
    iget-boolean v10, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIs4By3:Z

    .line 117
    iget-object v11, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultRandomizeDefault:Ljava/lang/Boolean;

    .line 118
    iget-object v12, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultForceDefaultOnInitialVisit:Ljava/lang/Boolean;

    .line 119
    iget-object v13, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDisableToggleDefault:Ljava/lang/Boolean;

    move v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    .line 120
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "defaultChoiceOverrideChoiceIndex"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "choiceDisplayRules"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "defaultChoiceStrategy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "disableToggleDefault"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_4
    const-string v4, "pausePlaybackOnEnter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v4, "queueSelectedChoice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_6
    const-string v4, "forceDefaultOnInitialVisit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_7
    const-string v4, "randomizeDefault"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_8
    const-string v4, "isInterstitialPostplay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_9
    const-string v4, "choiceDisplayStrategy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    const-string v4, "is4By3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_b
    const-string v4, "autoSelectChoiceOnTimeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 172
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->disableToggleDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v26, v2

    goto/16 :goto_0

    .line 168
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->forceDefaultOnInitialVisitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v25, v2

    goto/16 :goto_0

    .line 164
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->randomizeDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v24, v2

    goto/16 :goto_0

    .line 160
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->is4By3Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v23, v2

    goto/16 :goto_0

    .line 156
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->queueSelectedChoiceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v22, v2

    goto/16 :goto_0

    .line 152
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->autoSelectChoiceOnTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v21, v2

    goto/16 :goto_0

    .line 148
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceOverrideChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 144
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceStrategyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    goto/16 :goto_0

    .line 140
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->isInterstitialPostplayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_0

    .line 136
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayRulesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 132
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayStrategyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto/16 :goto_0

    .line 128
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->pausePlaybackOnEnterAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_0

    .line 180
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 181
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_InteractiveSceneConfig;

    move-object v14, v1

    invoke-direct/range {v14 .. v26}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_InteractiveSceneConfig;-><init>(ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5177992a -> :sswitch_b
        -0x4665edee -> :sswitch_a
        -0x22407d8c -> :sswitch_9
        -0x2d4496 -> :sswitch_8
        0x8d97b50 -> :sswitch_7
        0x1204ee5c -> :sswitch_6
        0x1458cf8d -> :sswitch_5
        0x1a59c0c8 -> :sswitch_4
        0x257f1245 -> :sswitch_3
        0x4a4650d5 -> :sswitch_2
        0x4e7cb196 -> :sswitch_1
        0x7ba92da3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAutoSelectChoiceOnTimeout(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultAutoSelectChoiceOnTimeout:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDefaultChoiceDisplayRules(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig$ChoiceDisplayRule;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayRules:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultChoiceDisplayStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceDisplayStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDefaultChoiceOverrideChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceOverrideChoiceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDefaultDefaultChoiceStrategy(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDefaultChoiceStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDisableToggleDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultDisableToggleDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDefaultForceDefaultOnInitialVisit(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultForceDefaultOnInitialVisit:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDefaultIs4By3(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIs4By3:Z

    return-object p0
.end method

.method public setDefaultIsInterstitialPostplay(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultIsInterstitialPostplay:Z

    return-object p0
.end method

.method public setDefaultPausePlaybackOnEnter(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultPausePlaybackOnEnter:Z

    return-object p0
.end method

.method public setDefaultQueueSelectedChoice(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultQueueSelectedChoice:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDefaultRandomizeDefault(Ljava/lang/Boolean;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultRandomizeDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)V
    .locals 2

    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "pausePlaybackOnEnter"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->pausePlaybackOnEnterAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->pausePlaybackOnEnter()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "choiceDisplayStrategy"

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayStrategyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "choiceDisplayRules"

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->choiceDisplayRulesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->choiceDisplayRules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isInterstitialPostplay"

    .line 81
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 82
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->isInterstitialPostplayAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->isInterstitialPostplay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "defaultChoiceStrategy"

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 84
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceStrategyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "defaultChoiceOverrideChoiceIndex"

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->defaultChoiceOverrideChoiceIndexAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->defaultChoiceOverrideChoiceIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "autoSelectChoiceOnTimeout"

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 88
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->autoSelectChoiceOnTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->autoSelectChoiceOnTimeout()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "queueSelectedChoice"

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 90
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->queueSelectedChoiceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "is4By3"

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 92
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->is4By3Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->is4By3()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "randomizeDefault"

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 94
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->randomizeDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->randomizeDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "forceDefaultOnInitialVisit"

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 96
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->forceDefaultOnInitialVisitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->forceDefaultOnInitialVisit()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableToggleDefault"

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 98
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->disableToggleDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->disableToggleDefault()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveSceneConfig$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)V

    return-void
.end method
