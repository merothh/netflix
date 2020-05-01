.class public final Lo/sl$ActionBar;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lo/sL;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Long;

.field private j:J

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sy;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 7

    .line 43
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lo/sl$ActionBar;->i:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lo/sl$ActionBar;->j:J

    .line 37
    iput-wide v1, p0, Lo/sl$ActionBar;->l:J

    .line 38
    iput-object v0, p0, Lo/sl$ActionBar;->n:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lo/sl$ActionBar;->o:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lo/sl$ActionBar;->k:Ljava/util/Map;

    .line 41
    iput-wide v1, p0, Lo/sl$ActionBar;->m:J

    .line 42
    iput-object v0, p0, Lo/sl$ActionBar;->s:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 44
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->c:Lcom/google/gson/TypeAdapter;

    .line 45
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->b:Lcom/google/gson/TypeAdapter;

    .line 46
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    .line 47
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->d:Lcom/google/gson/TypeAdapter;

    .line 48
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/util/List;

    new-array v4, v1, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/Long;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->a:Lcom/google/gson/TypeAdapter;

    .line 49
    const-class v0, Ljava/util/Map;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Lo/sy;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->f:Lcom/google/gson/TypeAdapter;

    .line 50
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/sl$ActionBar;->g:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/sl$ActionBar;->h:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lo/sl$ActionBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sy;",
            ">;)",
            "Lo/sl$ActionBar;"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lo/sl$ActionBar;->k:Ljava/util/Map;

    return-object p0
.end method

.method public b(J)Lo/sl$ActionBar;
    .locals 0

    .line 165
    iput-wide p1, p0, Lo/sl$ActionBar;->m:J

    return-object p0
.end method

.method public c(Ljava/util/List;)Lo/sl$ActionBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lo/sl$ActionBar;"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lo/sl$ActionBar;->o:Ljava/util/List;

    return-object p0
.end method

.method public c(Lcom/google/gson/stream/JsonWriter;Lo/sL;)V
    .locals 3

    if-nez p2, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "viewableId"

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 61
    iget-object v0, p0, Lo/sl$ActionBar;->c:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "startTimeMs"

    .line 62
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 63
    iget-object v0, p0, Lo/sl$ActionBar;->b:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "endTimeMs"

    .line 64
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 65
    iget-object v0, p0, Lo/sl$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "defaultNext"

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 67
    iget-object v0, p0, Lo/sl$ActionBar;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "transitionDelayZones"

    .line 68
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 69
    iget-object v0, p0, Lo/sl$ActionBar;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "next"

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 71
    iget-object v0, p0, Lo/sl$ActionBar;->f:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->h()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "earliestSkipRequestOffset"

    .line 72
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 73
    iget-object v0, p0, Lo/sl$ActionBar;->g:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "transitionHint"

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lo/sl$ActionBar;->h:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lo/sL;->i()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public d(Lcom/google/gson/stream/JsonReader;)Lo/sL;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 85
    iget-object v2, v0, Lo/sl$ActionBar;->i:Ljava/lang/Long;

    .line 86
    iget-wide v3, v0, Lo/sl$ActionBar;->j:J

    .line 87
    iget-wide v5, v0, Lo/sl$ActionBar;->l:J

    .line 88
    iget-object v7, v0, Lo/sl$ActionBar;->n:Ljava/lang/String;

    .line 89
    iget-object v8, v0, Lo/sl$ActionBar;->o:Ljava/util/List;

    .line 90
    iget-object v9, v0, Lo/sl$ActionBar;->k:Ljava/util/Map;

    .line 91
    iget-wide v10, v0, Lo/sl$ActionBar;->m:J

    .line 92
    iget-object v12, v0, Lo/sl$ActionBar;->s:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-object v14, v2

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-wide/from16 v22, v10

    move-object/from16 v24, v12

    .line 93
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "transitionDelayZones"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "endTimeMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "earliestSkipRequestOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v4, "next"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "defaultNext"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "viewableId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_6
    const-string v4, "startTimeMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "transitionHint"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v2, v0, Lo/sl$ActionBar;->h:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-object/from16 v24, v2

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v2, v0, Lo/sl$ActionBar;->g:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v22, v2

    goto/16 :goto_0

    .line 121
    :pswitch_2
    iget-object v2, v0, Lo/sl$ActionBar;->f:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object/from16 v21, v2

    goto/16 :goto_0

    .line 117
    :pswitch_3
    iget-object v2, v0, Lo/sl$ActionBar;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 113
    :pswitch_4
    iget-object v2, v0, Lo/sl$ActionBar;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    goto/16 :goto_0

    .line 109
    :pswitch_5
    iget-object v2, v0, Lo/sl$ActionBar;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v17, v2

    goto/16 :goto_0

    .line 105
    :pswitch_6
    iget-object v2, v0, Lo/sl$ActionBar;->b:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v15, v2

    goto/16 :goto_0

    .line 101
    :pswitch_7
    iget-object v2, v0, Lo/sl$ActionBar;->c:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v14, v2

    goto/16 :goto_0

    .line 137
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 138
    new-instance v1, Lo/sl;

    move-object v13, v1

    invoke-direct/range {v13 .. v24}, Lo/sl;-><init>(Ljava/lang/Long;JJLjava/lang/String;Ljava/util/List;Ljava/util/Map;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7772f284 -> :sswitch_7
        -0x6e23c3ab -> :sswitch_6
        -0x581a6506 -> :sswitch_5
        -0x1a0e332c -> :sswitch_4
        0x338af3 -> :sswitch_3
        0x81aafb0 -> :sswitch_2
        0x6102020e -> :sswitch_1
        0x6fe685b9 -> :sswitch_0
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

.method public d(J)Lo/sl$ActionBar;
    .locals 0

    .line 145
    iput-wide p1, p0, Lo/sl$ActionBar;->j:J

    return-object p0
.end method

.method public e(J)Lo/sl$ActionBar;
    .locals 0

    .line 149
    iput-wide p1, p0, Lo/sl$ActionBar;->l:J

    return-object p0
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)Lo/sl$ActionBar;
    .locals 0

    .line 169
    iput-object p1, p0, Lo/sl$ActionBar;->s:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-object p0
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/sl$ActionBar;->d(Lcom/google/gson/stream/JsonReader;)Lo/sL;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/sL;

    invoke-virtual {p0, p1, p2}, Lo/sl$ActionBar;->c(Lcom/google/gson/stream/JsonWriter;Lo/sL;)V

    return-void
.end method
