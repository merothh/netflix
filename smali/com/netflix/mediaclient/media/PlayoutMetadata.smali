.class public final Lcom/netflix/mediaclient/media/PlayoutMetadata;
.super Ljava/lang/Object;
.source "PlayoutMetadata.java"


# static fields
.field private static final DELTA_CURRENT:J = 0x3e8L


# instance fields
.field public audioTrackType:I

.field public duration:I

.field public instantBitRate:I

.field public isHD:Z

.field public isSuperHD:Z

.field public language:Ljava/lang/String;

.field public mVideoDecoderName:Ljava/lang/String;

.field public mVideoResolution:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public numChannels:I

.field public position:I

.field public targetBitRate:I

.field private timestamp:J


# direct methods
.method public constructor <init>(IIIIZZLjava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->timestamp:J

    iput p1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->position:I

    iput p2, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->duration:I

    iput p3, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    iput p4, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    iput-boolean p5, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isHD:Z

    iput-boolean p6, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isSuperHD:Z

    iput-object p7, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->language:Ljava/lang/String;

    iput p8, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->numChannels:I

    iput p9, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->audioTrackType:I

    return-void
.end method

.method public constructor <init>(ILandroid/util/Pair;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->timestamp:J

    iput p1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    iput-object p2, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoResolution:Landroid/util/Pair;

    iput-object p3, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoDecoderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioChannel()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->numChannels:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->numChannels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Mono"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Stereo"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "5.1"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "6.1"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "7.1"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAudioTrackType()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->audioTrackType:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "uknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "primary"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "commentary"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "assitive"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCurrent()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayoutMetadata [timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", instantBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isHD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSuperHD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isSuperHD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PlayoutMetadata;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioTrackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioTrackType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
