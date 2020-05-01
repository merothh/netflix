.class public final Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDrmHeader:Lo/sw;

.field private defaultFlavor:Ljava/lang/String;

.field private defaultLicense:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

.field private defaultMaxCroppedHeight:I

.field private defaultMaxCroppedWidth:I

.field private defaultMaxHeight:I

.field private defaultMaxWidth:I

.field private defaultNewTrackId:Ljava/lang/String;

.field private defaultPixelAspectX:I

.field private defaultPixelAspectY:I

.field private defaultProfile:Ljava/lang/String;

.field private defaultStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTrackId:Ljava/lang/String;

.field private final drmHeaderAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sw;",
            ">;"
        }
    .end annotation
.end field

.field private final flavorAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final licenseAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;",
            ">;"
        }
    .end annotation
.end field

.field private final maxCroppedHeightAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxCroppedWidthAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHeightAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxWidthAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final newTrackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pixelAspectXAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pixelAspectYAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final profileAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final streamsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;>;"
        }
    .end annotation
.end field

.field private final trackIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectY:I

    .line 40
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectX:I

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultFlavor:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedWidth:I

    .line 43
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxHeight:I

    .line 44
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedHeight:I

    .line 45
    iput v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxWidth:I

    .line 46
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultStreams:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultProfile:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultTrackId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultNewTrackId:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultDrmHeader:Lo/sw;

    .line 51
    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultLicense:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    .line 53
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectYAdapter:Lcom/google/gson/TypeAdapter;

    .line 54
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectXAdapter:Lcom/google/gson/TypeAdapter;

    .line 55
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->flavorAdapter:Lcom/google/gson/TypeAdapter;

    .line 56
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedWidthAdapter:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxHeightAdapter:Lcom/google/gson/TypeAdapter;

    .line 58
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedHeightAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxWidthAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/mediaclient/media/manifest/Stream;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->streamsAdapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->profileAdapter:Lcom/google/gson/TypeAdapter;

    .line 62
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 63
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->newTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 64
    const-class v0, Lo/sw;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->drmHeaderAdapter:Lcom/google/gson/TypeAdapter;

    .line 65
    const-class v0, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->licenseAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/VideoTrack;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 109
    iget v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectY:I

    .line 110
    iget v3, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectX:I

    .line 111
    iget-object v4, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultFlavor:Ljava/lang/String;

    .line 112
    iget v5, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedWidth:I

    .line 113
    iget v6, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxHeight:I

    .line 114
    iget v7, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedHeight:I

    .line 115
    iget v8, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxWidth:I

    .line 116
    iget-object v9, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultStreams:Ljava/util/List;

    .line 117
    iget-object v10, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultProfile:Ljava/lang/String;

    .line 118
    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultTrackId:Ljava/lang/String;

    .line 119
    iget-object v12, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultNewTrackId:Ljava/lang/String;

    .line 120
    iget-object v13, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultDrmHeader:Lo/sw;

    .line 121
    iget-object v14, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultLicense:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "pixelAspectY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "pixelAspectX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "track_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "maxCroppedHeight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "drmHeader"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_5
    const-string v4, "maxWidth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_6
    const-string v4, "license"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_7
    const-string v4, "profile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_8
    const-string v4, "new_track_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_9
    const-string v4, "maxHeight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "maxCroppedWidth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v4, "flavor"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_c
    const-string v4, "streams"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 178
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->licenseAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-object/from16 v28, v2

    goto/16 :goto_0

    .line 174
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->drmHeaderAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sw;

    move-object/from16 v27, v2

    goto/16 :goto_0

    .line 170
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->newTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v26, v2

    goto/16 :goto_0

    .line 166
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v25, v2

    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->profileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v24, v2

    goto/16 :goto_0

    .line 158
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->streamsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v23, v2

    goto/16 :goto_0

    .line 154
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxWidthAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v22, v2

    goto/16 :goto_0

    .line 150
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedHeightAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_0

    .line 146
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxHeightAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_0

    .line 142
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedWidthAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 138
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->flavorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    goto/16 :goto_0

    .line 134
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectXAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_0

    .line 130
    :pswitch_c
    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectYAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_0

    .line 186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 187
    new-instance v1, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;

    move-object v15, v1

    invoke-direct/range {v15 .. v28}, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;-><init>(IILjava/lang/String;IIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/sw;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b5f0d -> :sswitch_c
        -0x4bd1e562 -> :sswitch_b
        -0x3f07f3f5 -> :sswitch_a
        -0x36017855 -> :sswitch_9
        -0x142dabb2 -> :sswitch_8
        -0x12717657 -> :sswitch_7
        0x9f08441 -> :sswitch_6
        0x17dd56c2 -> :sswitch_5
        0x33a2610c -> :sswitch_4
        0x443a7b82 -> :sswitch_3
        0x4bb9f88f -> :sswitch_2
        0x7cfd799a -> :sswitch_1
        0x7cfd799b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDrmHeader(Lo/sw;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultDrmHeader:Lo/sw;

    return-object p0
.end method

.method public setDefaultFlavor(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultFlavor:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultLicense(Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultLicense:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-object p0
.end method

.method public setDefaultMaxCroppedHeight(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 210
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedHeight:I

    return-object p0
.end method

.method public setDefaultMaxCroppedWidth(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 202
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxCroppedWidth:I

    return-object p0
.end method

.method public setDefaultMaxHeight(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 206
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxHeight:I

    return-object p0
.end method

.method public setDefaultMaxWidth(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 214
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultMaxWidth:I

    return-object p0
.end method

.method public setDefaultNewTrackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultNewTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultPixelAspectX(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 194
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectX:I

    return-object p0
.end method

.method public setDefaultPixelAspectY(I)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 190
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultPixelAspectY:I

    return-object p0
.end method

.method public setDefaultProfile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultProfile:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultStreams(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultStreams:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultTrackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->defaultTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/VideoTrack;)V
    .locals 2

    if-nez p2, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "pixelAspectY"

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectYAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "pixelAspectX"

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->pixelAspectXAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "flavor"

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->flavorAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxCroppedWidth"

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedWidthAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxHeight"

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxHeightAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxCroppedHeight"

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxCroppedHeightAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxWidth"

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->maxWidthAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "streams"

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->streamsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "profile"

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->profileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "track_id"

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->trackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->trackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "new_track_id"

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->newTrackIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->newTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "drmHeader"

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->drmHeaderAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "license"

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->licenseAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/media/manifest/VideoTrack;)V

    return-void
.end method
