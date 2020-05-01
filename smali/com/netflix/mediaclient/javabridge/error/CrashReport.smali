.class public final Lcom/netflix/mediaclient/javabridge/error/CrashReport;
.super Ljava/lang/Object;
.source "CrashReport.java"


# static fields
.field public static final EP_ID:Ljava/lang/String; = "NF_CrashReport.episodeId"

.field public static final ERROR_CODE:Ljava/lang/String; = "NF_CrashReport.errorCode"

.field public static final ERROR_NUMBER:Ljava/lang/String; = "NF_CrashReport.errorNumber"

.field public static final MOVIE_ID:Ljava/lang/String; = "NF_CrashReport.movieId"

.field public static final PID:Ljava/lang/String; = "NF_CrashReport.pid"

.field public static final SIGNAL:Ljava/lang/String; = "NF_CrashReport.signal"

.field public static final SIG_NUMBER:Ljava/lang/String; = "NF_CrashReport.sigNumber"

.field public static final TRACK_ID:Ljava/lang/String; = "NF_CrashReport.trackId"

.field public static final TS:Ljava/lang/String; = "NF_CrashReport.ts"


# instance fields
.field private episodeId:Ljava/lang/String;

.field private errorCode:J

.field private errorNumber:J

.field private movieId:Ljava/lang/String;

.field private pid:I

.field private sigNumber:J

.field private signal:Lcom/netflix/mediaclient/javabridge/error/Signal;

.field private trkId:I

.field private ts:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/error/Signal;JJJI)V
    .locals 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;-><init>(Lcom/netflix/mediaclient/javabridge/error/Signal;JJJLjava/lang/String;Ljava/lang/String;IJI)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/error/Signal;JJJLjava/lang/String;Ljava/lang/String;IJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->signal:Lcom/netflix/mediaclient/javabridge/error/Signal;

    iput-wide p2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->sigNumber:J

    iput-wide p4, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorNumber:J

    iput-wide p6, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorCode:J

    iput-wide p11, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->ts:J

    invoke-direct {p0, p8}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    invoke-direct {p0, p9}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    iput p10, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    iput p13, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->pid:I

    return-void
.end method

.method private toGmtString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toNoNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCrashTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->ts:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->toGmtString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorCode:J

    return-wide v0
.end method

.method public getErrorNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorNumber:J

    return-wide v0
.end method

.method public getMovieId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->pid:I

    return v0
.end method

.method public getSigNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->sigNumber:J

    return-wide v0
.end method

.method public getSignal()Lcom/netflix/mediaclient/javabridge/error/Signal;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->signal:Lcom/netflix/mediaclient/javabridge/error/Signal;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->ts:J

    return-wide v0
.end method

.method public getTrkId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    return v0
.end method

.method public setAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->setTrkId(I)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->setMovieId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->setMovieId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->setEpisodeId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    return-void
.end method

.method public setMovieId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    return-void
.end method

.method public setTrkId(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "signal"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->signal:Lcom/netflix/mediaclient/javabridge/error/Signal;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/error/Signal;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "signumber"

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->sigNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "errorCode"

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorCode:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "errorNumber"

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "movieId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "epId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "trkId"

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->ts:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->pid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CrashReport [errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->errorNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sigNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->sigNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->signal:Lcom/netflix/mediaclient/javabridge/error/Signal;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/error/Signal;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getCrashTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", movieId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->movieId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", epId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->trkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
