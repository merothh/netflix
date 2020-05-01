.class public final Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bodyCopyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bodyCopyConfirmationThumbsDownAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bodyCopyConfirmationThumbsUpAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final boxshotAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final boxshotWebpAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBodyCopy:Ljava/lang/String;

.field private defaultBodyCopyConfirmationThumbsDown:Ljava/lang/String;

.field private defaultBodyCopyConfirmationThumbsUp:Ljava/lang/String;

.field private defaultBoxshot:Ljava/lang/String;

.field private defaultBoxshotWebp:Ljava/lang/String;

.field private defaultLayout:Ljava/lang/String;

.field private defaultTitleId:I

.field private defaultVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final layoutAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final titleIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultLayout:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopy:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsUp:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsDown:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshot:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshotWebp:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultTitleId:I

    .line 43
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 45
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->layoutAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyAdapter:Lcom/google/gson/TypeAdapter;

    .line 47
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsUpAdapter:Lcom/google/gson/TypeAdapter;

    .line 48
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsDownAdapter:Lcom/google/gson/TypeAdapter;

    .line 49
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotAdapter:Lcom/google/gson/TypeAdapter;

    .line 50
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotWebpAdapter:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    .line 52
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->titleIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 53
    new-instance p1, Lcom/netflix/model/leafs/social/VideoTypeAdapter;

    invoke-direct {p1}, Lcom/netflix/model/leafs/social/VideoTypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->videoTypeAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 90
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultLayout:Ljava/lang/String;

    .line 91
    iget-object v3, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopy:Ljava/lang/String;

    .line 92
    iget-object v4, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsUp:Ljava/lang/String;

    .line 93
    iget-object v5, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsDown:Ljava/lang/String;

    .line 94
    iget-object v6, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshot:Ljava/lang/String;

    .line 95
    iget-object v7, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshotWebp:Ljava/lang/String;

    .line 96
    iget-object v8, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    .line 97
    iget v9, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultTitleId:I

    .line 98
    iget-object v10, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    .line 99
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "bodyCopy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "boxshotWebp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "videoType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_3
    const-string v4, "bodyCopyConfirmationThumbsUp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "boxshot"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "bodyCopyConfirmationThumbsDown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "layout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_7
    const-string v4, "actions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "titleId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->videoTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 135
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->titleIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 131
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v18, v2

    goto/16 :goto_0

    .line 127
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotWebpAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 123
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto/16 :goto_0

    .line 119
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsDownAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto/16 :goto_0

    .line 115
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsUpAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    goto/16 :goto_0

    .line 111
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto/16 :goto_0

    .line 107
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->layoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto/16 :goto_0

    .line 147
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 148
    new-instance v1, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingInfoModule;

    move-object v11, v1

    invoke-direct/range {v11 .. v20}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingInfoModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4deb0a6d -> :sswitch_8
        -0x453fb703 -> :sswitch_7
        -0x422504d6 -> :sswitch_6
        -0x36d01535 -> :sswitch_5
        0x45d7b45 -> :sswitch_4
        0x379e4b04 -> :sswitch_3
        0x4f736255 -> :sswitch_2
        0x571d6481 -> :sswitch_1
        0x6574bc37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultActions(Ljava/util/List;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;",
            ">;)",
            "Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultBodyCopy(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopy:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBodyCopyConfirmationThumbsDown(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsDown:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBodyCopyConfirmationThumbsUp(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBodyCopyConfirmationThumbsUp:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBoxshot(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshot:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBoxshotWebp(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultBoxshotWebp:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultLayout(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultLayout:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultTitleId(I)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 179
    iput p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultTitleId:I

    return-object p0
.end method

.method public setDefaultVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->defaultVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V
    .locals 2

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "layout"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->layoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->layout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "bodyCopy"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "bodyCopyConfirmationThumbsUp"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsUpAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsUp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "bodyCopyConfirmationThumbsDown"

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->bodyCopyConfirmationThumbsDownAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsDown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "boxshot"

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "boxshotWebp"

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->boxshotWebpAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshotWebp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "actions"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->actions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "titleId"

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->titleIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->titleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "videoType"

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->videoTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationRatingInfoModule$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V

    return-void
.end method
