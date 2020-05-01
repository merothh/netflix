.class public final Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    return-void
.end method

.method public constructor <init>(Lo/sv;J)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lo/sv;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lo/sv;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lo/sv;->c()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    .line 72
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "audioTrackId"

    .line 62
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    const-string v1, "subtitleTrackId"

    .line 63
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    const-string v0, "preferenceOrder"

    const/4 v1, -0x1

    .line 64
    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    .line 65
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    return-void
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Defaults are null!"

    .line 162
    invoke-static {p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    iget p1, p1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-ge v1, p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->compareTo(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)I

    move-result p1

    return p1
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeInMs()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    return-wide v0
.end method

.method public getPreferenceOrder()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    return v0
.end method

.method public getSubtitleTrackId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSubtitleDefaultOrderInfo [audioTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->audioTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->subtitleTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preferenceOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->preferenceOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creationTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->creationTimeInMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
