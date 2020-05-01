.class public final Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/media/manifest/Stream;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final contentProfileAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBitrate:I

.field private defaultContentProfile:Ljava/lang/String;

.field private defaultDownloadableId:Ljava/lang/String;

.field private defaultFramerateScale:I

.field private defaultFramerateValue:I

.field private defaultIsDrm:Z

.field private defaultMoov:Lo/su;

.field private defaultNewStreamId:Ljava/lang/String;

.field private defaultPeakBitrate:I

.field private defaultResH:I

.field private defaultResW:I

.field private defaultSidx:Lo/su;

.field private defaultSize:J

.field private defaultUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end field

.field private defaultVmaf:I

.field private final downloadableIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final framerateScaleAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final framerateValueAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isDrmAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final moovAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lo/su;",
            ">;"
        }
    .end annotation
.end field

.field private final newStreamIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final peakBitrateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resHAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resWAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sidxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lo/su;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final urlsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;>;"
        }
    .end annotation
.end field

.field private final vmafAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultBitrate:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultUrls:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultContentProfile:Ljava/lang/String;

    .line 45
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultIsDrm:Z

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSize:J

    .line 47
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultDownloadableId:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultNewStreamId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultMoov:Lo/su;

    .line 50
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSidx:Lo/su;

    .line 51
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultVmaf:I

    .line 52
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResW:I

    .line 53
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultPeakBitrate:I

    .line 54
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResH:I

    .line 55
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateValue:I

    .line 56
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateScale:I

    .line 58
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->bitrateAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/mediaclient/media/manifest/Url;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->urlsAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->contentProfileAdapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->isDrmAdapter:Lcom/google/gson/TypeAdapter;

    .line 62
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sizeAdapter:Lcom/google/gson/TypeAdapter;

    .line 63
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->downloadableIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 64
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->newStreamIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 65
    const-class v0, Lo/su;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->moovAdapter:Lcom/google/gson/TypeAdapter;

    .line 66
    const-class v0, Lo/su;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sidxAdapter:Lcom/google/gson/TypeAdapter;

    .line 67
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->vmafAdapter:Lcom/google/gson/TypeAdapter;

    .line 68
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resWAdapter:Lcom/google/gson/TypeAdapter;

    .line 69
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->peakBitrateAdapter:Lcom/google/gson/TypeAdapter;

    .line 70
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resHAdapter:Lcom/google/gson/TypeAdapter;

    .line 71
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateValueAdapter:Lcom/google/gson/TypeAdapter;

    .line 72
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateScaleAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/Stream;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 119
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 120
    iget v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultBitrate:I

    .line 121
    iget-object v3, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultUrls:Ljava/util/List;

    .line 122
    iget-object v4, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultContentProfile:Ljava/lang/String;

    .line 123
    iget-boolean v5, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultIsDrm:Z

    .line 124
    iget-wide v6, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSize:J

    .line 125
    iget-object v8, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultDownloadableId:Ljava/lang/String;

    .line 126
    iget-object v9, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultNewStreamId:Ljava/lang/String;

    .line 127
    iget-object v10, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultMoov:Lo/su;

    .line 128
    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSidx:Lo/su;

    .line 129
    iget v12, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultVmaf:I

    .line 130
    iget v13, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResW:I

    .line 131
    iget v14, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultPeakBitrate:I

    .line 132
    iget v15, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResH:I

    move/from16 v16, v2

    .line 133
    iget v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateValue:I

    move/from16 v17, v2

    .line 134
    iget v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateScale:I

    move/from16 v34, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v19, v16

    move/from16 v33, v17

    .line 135
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "peakBitrate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "downloadable_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "framerate_value"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "framerate_scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "new_stream_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "content_profile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "res_w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_7
    const-string v4, "res_h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_8
    const-string v4, "isDrm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_9
    const-string v4, "vmaf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "urls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_b
    const-string v4, "size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_c
    const-string v4, "sidx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_d
    const-string v4, "moov"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_e
    const-string v4, "bitrate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 199
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateScaleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v34, v2

    goto/16 :goto_0

    .line 195
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v33, v2

    goto/16 :goto_0

    .line 191
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resHAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v32, v2

    goto/16 :goto_0

    .line 187
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->peakBitrateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v31, v2

    goto/16 :goto_0

    .line 183
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resWAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v30, v2

    goto/16 :goto_0

    .line 179
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->vmafAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v29, v2

    goto/16 :goto_0

    .line 175
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sidxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/su;

    move-object/from16 v28, v2

    goto/16 :goto_0

    .line 171
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->moovAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/su;

    move-object/from16 v27, v2

    goto/16 :goto_0

    .line 167
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->newStreamIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v26, v2

    goto/16 :goto_0

    .line 163
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->downloadableIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v25, v2

    goto/16 :goto_0

    .line 159
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sizeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v23, v2

    goto/16 :goto_0

    .line 155
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->isDrmAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v22, v2

    goto/16 :goto_0

    .line 151
    :pswitch_c
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->contentProfileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    goto/16 :goto_0

    .line 147
    :pswitch_d
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->urlsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 143
    :pswitch_e
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->bitrateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 207
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 208
    new-instance v1, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v34}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;-><init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6188493 -> :sswitch_e
        0x333b09 -> :sswitch_d
        0x35dd6a -> :sswitch_c
        0x35e001 -> :sswitch_b
        0x36e8e4 -> :sswitch_a
        0x37491c -> :sswitch_9
        0x5fcf815 -> :sswitch_8
        0x6761c89 -> :sswitch_7
        0x6761c98 -> :sswitch_6
        0x6b9dbe3 -> :sswitch_5
        0x50230e5b -> :sswitch_4
        0x56d31658 -> :sswitch_3
        0x56fc9e7f -> :sswitch_2
        0x6cecb498 -> :sswitch_1
        0x7b33b98e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBitrate(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 211
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultBitrate:I

    return-object p0
.end method

.method public setDefaultContentProfile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultContentProfile:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDownloadableId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultDownloadableId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultFramerateScale(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 267
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateScale:I

    return-object p0
.end method

.method public setDefaultFramerateValue(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 263
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultFramerateValue:I

    return-object p0
.end method

.method public setDefaultIsDrm(Z)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultIsDrm:Z

    return-object p0
.end method

.method public setDefaultMoov(Lo/su;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultMoov:Lo/su;

    return-object p0
.end method

.method public setDefaultNewStreamId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultNewStreamId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultPeakBitrate(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 255
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultPeakBitrate:I

    return-object p0
.end method

.method public setDefaultResH(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 259
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResH:I

    return-object p0
.end method

.method public setDefaultResW(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 251
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultResW:I

    return-object p0
.end method

.method public setDefaultSidx(Lo/su;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSidx:Lo/su;

    return-object p0
.end method

.method public setDefaultSize(J)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 227
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultSize:J

    return-object p0
.end method

.method public setDefaultUrls(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultUrls:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultVmaf(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    .locals 0

    .line 247
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->defaultVmaf:I

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/Stream;)V
    .locals 3

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "bitrate"

    .line 81
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->bitrateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "urls"

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->urlsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "content_profile"

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->contentProfileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->contentProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isDrm"

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->isDrmAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->isDrm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "size"

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sizeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "downloadable_id"

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->downloadableIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "new_stream_id"

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->newStreamIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->newStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "moov"

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->moovAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "sidx"

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->sidxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "vmaf"

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->vmafAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->vmaf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "res_w"

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resWAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resW()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "peakBitrate"

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->peakBitrateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->peakBitrate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "res_h"

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->resHAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "framerate_value"

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateValueAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "framerate_scale"

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->framerateScaleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateScale()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/Stream;)V

    return-void
.end method
