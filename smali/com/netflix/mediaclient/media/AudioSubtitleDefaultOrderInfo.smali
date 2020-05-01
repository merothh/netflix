.class public final Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.super Ljava/lang/Object;
.source "AudioSubtitleDefaultOrderInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private audioTrackId:Ljava/lang/String;

.field private creationTimeInMs:J

.field private preferenceOrder:I

.field private subtitleTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string/jumbo v0, "audioTrackId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "subtitleTrackId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "preferenceOrder"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    .line 64
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    .line 65
    return-void
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    if-eqz p0, :cond_0

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Defalts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const-string/jumbo v0, "Defaults are null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    iget v2, p1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    if-ne v1, v2, :cond_2

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    iget v2, p1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    if-ge v1, v2, :cond_0

    .line 132
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->compareTo(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)I

    move-result v0

    return v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeInMs()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    return-wide v0
.end method

.method public getPreferenceOrder()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    return v0
.end method

.method public getSubtitleTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioSubtitleDefaultOrderInfo [audioTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitleTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", preferenceOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creationTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
