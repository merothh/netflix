.class abstract Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;
.super Lcom/netflix/mediaclient/media/manifest/Stream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final contentProfile:Ljava/lang/String;

.field private final downloadableId:Ljava/lang/String;

.field private final framerateScale:I

.field private final framerateValue:I

.field private final isDrm:Z

.field private final moov:Lo/su;

.field private final newStreamId:Ljava/lang/String;

.field private final peakBitrate:I

.field private final resH:I

.field private final resW:I

.field private final sidx:Lo/su;

.field private final size:J

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end field

.field private final vmaf:I


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/su;",
            "Lo/su;",
            "IIIIII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p7

    move-object v4, p8

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/Stream;-><init>()V

    move v5, p1

    .line 59
    iput v5, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->bitrate:I

    if-eqz v1, :cond_3

    .line 63
    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->urls:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 67
    iput-object v2, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->contentProfile:Ljava/lang/String;

    move v1, p4

    .line 68
    iput-boolean v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->isDrm:Z

    move-wide v1, p5

    .line 69
    iput-wide v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->size:J

    if-eqz v3, :cond_1

    .line 73
    iput-object v3, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->downloadableId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 77
    iput-object v4, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->newStreamId:Ljava/lang/String;

    move-object v1, p9

    .line 78
    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->moov:Lo/su;

    move-object/from16 v1, p10

    .line 79
    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->sidx:Lo/su;

    move/from16 v1, p11

    .line 80
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->vmaf:I

    move/from16 v1, p12

    .line 81
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resW:I

    move/from16 v1, p13

    .line 82
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->peakBitrate:I

    move/from16 v1, p14

    .line 83
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resH:I

    move/from16 v1, p15

    .line 84
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateValue:I

    move/from16 v1, p16

    .line 85
    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateScale:I

    return-void

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null newStreamId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null downloadableId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null contentProfile"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null urls"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bitrate()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation

    .line 91
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->bitrate:I

    return v0
.end method

.method public contentProfile()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_profile"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->contentProfile:Ljava/lang/String;

    return-object v0
.end method

.method public downloadableId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadable_id"
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->downloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 206
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/media/manifest/Stream;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 207
    check-cast p1, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 208
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->bitrate:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->urls:Ljava/util/List;

    .line 209
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->contentProfile:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->contentProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->isDrm:Z

    .line 211
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->isDrm()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-wide v3, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->size:J

    .line 212
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->size()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->downloadableId:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->newStreamId:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->newStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->moov:Lo/su;

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->sidx:Lo/su;

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->vmaf:I

    .line 217
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->vmaf()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resW:I

    .line 218
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->resW()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->peakBitrate:I

    .line 219
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->peakBitrate()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resH:I

    .line 220
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateValue:I

    .line 221
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateScale:I

    .line 222
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateScale()I

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public framerateScale()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "framerate_scale"
    .end annotation

    .line 177
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateScale:I

    return v0
.end method

.method public framerateValue()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "framerate_value"
    .end annotation

    .line 171
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateValue:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 231
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->bitrate:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 233
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->urls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 235
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->contentProfile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 237
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->isDrm:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 239
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->size:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 241
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->downloadableId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 243
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->newStreamId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 245
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->moov:Lo/su;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 247
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->sidx:Lo/su;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 249
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->vmaf:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 251
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resW:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 253
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->peakBitrate:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 255
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resH:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 257
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateValue:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 259
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateScale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDrm()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDrm"
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->isDrm:Z

    return v0
.end method

.method public moov()Lo/su;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moov"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->moov:Lo/su;

    return-object v0
.end method

.method public newStreamId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_stream_id"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->newStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public peakBitrate()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peakBitrate"
    .end annotation

    .line 159
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->peakBitrate:I

    return v0
.end method

.method public resH()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "res_h"
    .end annotation

    .line 165
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resH:I

    return v0
.end method

.method public resW()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "res_w"
    .end annotation

    .line 153
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resW:I

    return v0
.end method

.method public sidx()Lo/su;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sidx"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->sidx:Lo/su;

    return-object v0
.end method

.method public size()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation

    .line 115
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->size:J

    return-wide v0
.end method

.method public toBuilder()Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .locals 2

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$Builder;-><init>(Lcom/netflix/mediaclient/media/manifest/Stream;Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream{bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->urls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->contentProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDrm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->isDrm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->downloadableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->newStreamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->moov:Lo/su;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sidx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->sidx:Lo/su;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vmaf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->vmaf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peakBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->peakBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->resH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", framerateValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", framerateScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->framerateScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public urls()Ljava/util/List;
    .locals 1
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

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->urls:Ljava/util/List;

    return-object v0
.end method

.method public vmaf()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vmaf"
    .end annotation

    .line 147
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;->vmaf:I

    return v0
.end method
