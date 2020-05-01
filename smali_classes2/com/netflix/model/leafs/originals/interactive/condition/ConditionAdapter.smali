.class public Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;
    .locals 7

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_a

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "not"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "gte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3
    const-string v2, "eql"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "and"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "lt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_7
    const-string v2, "gt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v3, "sessionState"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_9
    const-string v2, "hasSeenSegments"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_a
    const-string v2, "globalState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_b
    const-string v2, "persistentState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported condition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 121
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_1
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionSum;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionSum;-><init>(Ljava/util/List;)V

    goto/16 :goto_a

    .line 111
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_2
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionLessThan;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionLessThan;-><init>(Ljava/util/List;)V

    goto/16 :goto_a

    .line 103
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_3

    .line 105
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 107
    :cond_3
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGreaterThan;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGreaterThan;-><init>(Ljava/util/List;)V

    goto/16 :goto_a

    .line 95
    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :goto_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_4

    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 99
    :cond_4
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGreaterThanOrEqual;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGreaterThanOrEqual;-><init>(Ljava/util/List;)V

    goto/16 :goto_a

    .line 87
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :goto_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_5

    .line 89
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 91
    :cond_5
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionOr;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionOr;-><init>(Ljava/util/List;)V

    goto/16 :goto_a

    .line 79
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :goto_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_6

    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 83
    :cond_6
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionEquals;

    new-array v2, v6, [Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionEquals;-><init>([Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)V

    goto :goto_a

    .line 70
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v0

    if-nez v0, :cond_7

    .line 72
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionNot;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionNot;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)V

    goto :goto_a

    .line 74
    :cond_7
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionNot;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionNot;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)V

    goto :goto_a

    .line 62
    :pswitch_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :goto_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_8

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 66
    :cond_8
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAnd;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAnd;-><init>(Ljava/util/List;)V

    goto :goto_a

    .line 58
    :pswitch_8
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionSessionState;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionSessionState;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 54
    :pswitch_9
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGlobalState;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionGlobalState;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :pswitch_a
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 42
    :pswitch_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    :goto_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_9

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 46
    :cond_9
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/SegmentsList;

    invoke-direct {v1, v0}, Lcom/netflix/model/leafs/originals/interactive/SegmentsList;-><init>(Ljava/util/Set;)V

    .line 129
    :goto_a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_b

    .line 131
    :cond_a
    sget-object v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter$1;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_d

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    .line 139
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 142
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 136
    :cond_c
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;-><init>(Ljava/lang/Double;)V

    goto :goto_b

    .line 133
    :cond_d
    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPrimitive;-><init>(Ljava/lang/Boolean;)V

    :goto_b
    return-object v1

    :catchall_0
    move-exception p1

    .line 64
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x690f33c6 -> :sswitch_b
        -0x32d16152 -> :sswitch_a
        -0x2ef9610b -> :sswitch_9
        -0x29908065 -> :sswitch_8
        0xced -> :sswitch_7
        0xd88 -> :sswitch_6
        0xde3 -> :sswitch_5
        0x179d7 -> :sswitch_4
        0x18940 -> :sswitch_3
        0x19118 -> :sswitch_2
        0x1aad3 -> :sswitch_1
        0x1be4b -> :sswitch_0
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


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->readNextCondition(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 21
    invoke-virtual {p2, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/Condition;->write(Lcom/google/gson/stream/JsonWriter;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/Condition;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)V

    return-void
.end method
