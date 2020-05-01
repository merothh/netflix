.class public Lcom/netflix/falkor/BranchNodeUtils;
.super Ljava/lang/Object;
.source "BranchNodeUtils.java"


# static fields
.field private static final ENABLE_VERBOSE_LOGGING:Z

.field private static final SERIALIZATION_IGNORE_KEYS_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BranchNodeUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/falkor/BranchNodeUtils;->ENABLE_VERBOSE_LOGGING:Z

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netflix/falkor/BranchNodeUtils;->SERIALIZATION_IGNORE_KEYS_SET:Ljava/util/HashSet;

    .line 25
    const-string/jumbo v0, "postPlayExperience"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "postPlayExperiences"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "interactive"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "interactiveMoments"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "postplay"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "details"

    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->addToIgnoreSet(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToIgnoreSet(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/netflix/falkor/BranchNodeUtils;->SERIALIZATION_IGNORE_KEYS_SET:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public static getAsStringArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 100
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 102
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    return-object v1
.end method

.method public static merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;I)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    if-eqz p2, :cond_c

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    sget-boolean v0, Lcom/netflix/falkor/BranchNodeUtils;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "BranchNodeUtils"

    const-string/jumbo v1, "Start Object"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 201
    :goto_0
    if-eqz v0, :cond_d

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 203
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 205
    sget-boolean v0, Lcom/netflix/falkor/BranchNodeUtils;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 206
    const-string/jumbo v0, "BranchNodeUtils"

    invoke-static {p3, v6}, Lcom/netflix/falkor/BranchNodeUtils;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    invoke-interface {p0, v6}, Lcom/netflix/falkor/BranchNode;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    instance-of v0, v1, Lcom/netflix/falkor/Sentinel;

    if-eqz v0, :cond_e

    move-object v0, v1

    .line 214
    check-cast v0, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 215
    invoke-interface {p0, v6}, Lcom/netflix/falkor/BranchNode;->remove(Ljava/lang/String;)V

    .line 216
    invoke-interface {p0, v6}, Lcom/netflix/falkor/BranchNode;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    :cond_2
    instance-of v0, v1, Lcom/netflix/falkor/Sentinel;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 220
    check-cast v0, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    move v3, v4

    .line 227
    :goto_1
    instance-of v1, v0, Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_7

    .line 228
    check-cast v0, Lcom/netflix/falkor/Ref;

    .line 230
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 232
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    invoke-interface {p0, v6, v0}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    move v3, v5

    .line 223
    goto :goto_1

    .line 236
    :cond_5
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/falkor/BranchNodeUtils;->readPQL(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V

    goto :goto_2

    .line 240
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 242
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    invoke-interface {p0, v6, v0}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-static {p1, v1, v4}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    goto :goto_2

    .line 247
    :cond_7
    instance-of v1, v0, Lcom/netflix/falkor/BranchNode;

    if-eqz v1, :cond_9

    move-object v1, v0

    .line 249
    check-cast v1, Lcom/netflix/falkor/BranchNode;

    .line 250
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    .line 249
    invoke-static {v1, p1, v2, v3}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    if-eq v1, v0, :cond_3

    .line 252
    sget-boolean v1, Lcom/netflix/falkor/BranchNodeUtils;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_8

    .line 253
    const-string/jumbo v1, "BranchNodeUtils"

    invoke-static {p3, v6}, Lcom/netflix/falkor/BranchNodeUtils;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_8
    invoke-interface {p0, v6, v0}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 259
    :cond_9
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;

    if-eqz v1, :cond_b

    move-object v1, v0

    .line 260
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    add-int/lit8 v8, p3, 0x1

    invoke-static {v1, p1, v7, v4, v8}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    .line 262
    if-eqz v3, :cond_a

    :goto_3
    invoke-interface {p0, v6, v2}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    move-object v2, v0

    goto :goto_3

    .line 264
    :cond_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 265
    invoke-static {p1, v0, v4}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    goto :goto_2

    .line 273
    :cond_c
    const/4 p0, 0x0

    :cond_d
    return-object p0

    :cond_e
    move-object v0, v1

    move-object v2, v1

    move v3, v5

    goto/16 :goto_1
.end method

.method public static merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 121
    .line 123
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v2

    .line 173
    :cond_0
    :goto_0
    return-object p0

    .line 125
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v1, v2

    .line 127
    :goto_1
    if-eqz v0, :cond_9

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 128
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 129
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected FIELD_NAME and it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 134
    sget-boolean v4, Lcom/netflix/falkor/BranchNodeUtils;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v4, :cond_3

    .line 135
    const-string/jumbo v4, "BranchNodeUtils"

    invoke-static {p4, v3}, Lcom/netflix/falkor/BranchNodeUtils;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    if-eqz v1, :cond_6

    .line 139
    const-string/jumbo v4, "$expires"

    if-ne v3, v4, :cond_5

    .line 140
    new-instance v3, Ljava/util/Date;

    invoke-static {p1, v0, v6}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Lcom/netflix/falkor/Sentinel;->setExpires(Ljava/util/Date;)V

    .line 146
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_5
    const-string/jumbo v0, "value"

    if-ne v3, v0, :cond_4

    .line 143
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-static {p0, p1, v0, v6, p4}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/Sentinel;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 154
    if-eqz p3, :cond_7

    const-string/jumbo v4, "_sentinel"

    if-ne v3, v4, :cond_7

    .line 155
    new-instance v0, Lcom/netflix/falkor/Sentinel;

    invoke-direct {v0, v2}, Lcom/netflix/falkor/Sentinel;-><init>(Ljava/lang/Object;)V

    .line 163
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 164
    goto/16 :goto_1

    .line 159
    :cond_7
    invoke-interface {p0, v3, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;->set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 160
    invoke-static {p1, v0, v6}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    :cond_8
    move-object v0, v1

    goto :goto_3

    .line 166
    :cond_9
    if-eqz v1, :cond_0

    move-object p0, v1

    .line 167
    goto/16 :goto_0

    .line 171
    :cond_a
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/netflix/falkor/BranchNodeUtils;->mergeArrayValue(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)V

    goto/16 :goto_0

    .line 176
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Value that is not null, object, or array found for JsonMerger"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mergeArrayValue(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v2, Ljava/lang/Integer;

    add-int/lit8 v1, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;->set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    .line 115
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    move v0, v1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method private static pad(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 186
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPQL(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/netflix/falkor/PQL;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :goto_0
    if-eqz p1, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 37
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_6
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public static readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    if-nez p2, :cond_0

    .line 69
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 74
    :goto_1
    if-eqz v1, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-static {p0, v1, p2}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 80
    :cond_7
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 83
    :goto_2
    if-eqz v1, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 86
    invoke-static {p0, v2, p2}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_2
.end method

.method public static shouldIgnoreKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/netflix/falkor/BranchNodeUtils;->SERIALIZATION_IGNORE_KEYS_SET:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
