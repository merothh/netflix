.class public final Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultFill:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private defaultId:Ljava/lang/String;

.field private defaultLeftCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private defaultRightCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

.field private defaultStyleId:Ljava/lang/String;

.field private defaultType:Ljava/lang/String;

.field private defaultVisualStateTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;"
        }
    .end annotation
.end field

.field private defaultVisualStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final fillAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;",
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

.field private final leftCapAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;",
            ">;"
        }
    .end annotation
.end field

.field private final rightCapAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;",
            ">;"
        }
    .end annotation
.end field

.field private final styleIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStateTransitionsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final visualStatesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 6

    .line 44
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultStyleId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStateTransitions:Ljava/util/Map;

    .line 40
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStates:Ljava/util/Map;

    .line 41
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultFill:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 42
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultLeftCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 43
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultRightCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 45
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 47
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->styleIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 48
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStateTransitionsAdapter:Lcom/google/gson/TypeAdapter;

    .line 49
    const-class v0, Ljava/util/Map;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStatesAdapter:Lcom/google/gson/TypeAdapter;

    .line 50
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->fillAdapter:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->leftCapAdapter:Lcom/google/gson/TypeAdapter;

    .line 52
    const-class v0, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->rightCapAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 89
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    .line 90
    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 91
    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultStyleId:Ljava/lang/String;

    .line 92
    iget-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStateTransitions:Ljava/util/Map;

    .line 93
    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStates:Ljava/util/Map;

    .line 94
    iget-object v7, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultFill:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 95
    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultLeftCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 96
    iget-object v9, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultRightCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 97
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "visualStates"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "visualStateTransitions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "leftCap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "fill"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_6
    const-string v4, "rightCap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "styleId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->rightCapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-object/from16 v18, v2

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->leftCapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 125
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->fillAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-object/from16 v16, v2

    goto/16 :goto_0

    .line 121
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStatesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v15, v2

    goto/16 :goto_0

    .line 117
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStateTransitionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v14, v2

    goto/16 :goto_0

    .line 113
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->styleIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto/16 :goto_0

    .line 109
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto/16 :goto_0

    .line 105
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto/16 :goto_0

    .line 141
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 142
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren;

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6fc58154 -> :sswitch_7
        -0x55993fea -> :sswitch_6
        0xd1b -> :sswitch_5
        0x2ff583 -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x34d964b -> :sswitch_2
        0x38b497cd -> :sswitch_1
        0x5f99d162 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultFill(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultFill:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultLeftCap(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultLeftCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setDefaultRightCap(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultRightCap:Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    return-object p0
.end method

.method public setDefaultStyleId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultStyleId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultVisualStateTransitions(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStateTransitions:Ljava/util/Map;

    return-object p0
.end method

.method public setDefaultVisualStates(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->defaultVisualStates:Ljava/util/Map;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;)V
    .locals 2

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "id"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->idAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "styleId"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->styleIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->styleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "visualStateTransitions"

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStateTransitionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->visualStateTransitions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "visualStates"

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->visualStatesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->visualStates()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "fill"

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->fillAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->fill()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "leftCap"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->leftCapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->leftCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "rightCap"

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->rightCapAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->rightCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar_TimerBarChildren$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;)V

    return-void
.end method
