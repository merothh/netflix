.class public abstract Lcom/netflix/mediaclient/media/manifest/Stream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Stream;
    .locals 20

    move-object/from16 v0, p0

    .line 77
    new-instance v18, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;

    move-object/from16 v1, v18

    const-string v2, "bitrate"

    .line 78
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "urls"

    .line 79
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/media/manifest/Url;->listFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    const-string v4, "content_profile"

    .line 80
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isDrm"

    .line 81
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "size"

    .line 82
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "downloadable_id"

    .line 83
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "new_stream_id"

    .line 84
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "moov"

    .line 85
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lo/su;->a(Lorg/json/JSONObject;)Lo/su;

    move-result-object v10

    const-string v11, "sidx"

    .line 86
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lo/su;->a(Lorg/json/JSONObject;)Lo/su;

    move-result-object v11

    const-string v12, "vmaf"

    .line 87
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "res_w"

    .line 88
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "peakBitrate"

    .line 89
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "res_h"

    .line 90
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v1

    const-string v1, "framerate_value"

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "framerate_scale"

    .line 92
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;-><init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V

    return-object v18
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract bitrate()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation
.end method

.method public abstract contentProfile()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_profile"
    .end annotation
.end method

.method public abstract downloadableId()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadable_id"
    .end annotation
.end method

.method public abstract framerateScale()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "framerate_scale"
    .end annotation
.end method

.method public abstract framerateValue()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "framerate_value"
    .end annotation
.end method

.method public abstract isDrm()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDrm"
    .end annotation
.end method

.method public isValid()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract moov()Lo/su;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moov"
    .end annotation
.end method

.method public abstract newStreamId()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_stream_id"
    .end annotation
.end method

.method public abstract peakBitrate()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peakBitrate"
    .end annotation
.end method

.method public abstract resH()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "res_h"
    .end annotation
.end method

.method public abstract resW()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "res_w"
    .end annotation
.end method

.method public abstract sidx()Lo/su;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sidx"
    .end annotation
.end method

.method public abstract size()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end method

.method public abstract toBuilder()Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract urls()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end method

.method public abstract vmaf()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vmaf"
    .end annotation
.end method
