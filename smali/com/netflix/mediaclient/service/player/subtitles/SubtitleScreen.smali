.class public Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
.super Ljava/lang/Object;
.source "SubtitleScreen.java"


# static fields
.field public static final DEFAULT_SUBTITLE_SCREEN_UPDATE:I = 0x7d0


# instance fields
.field private mDisplayLaterBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayNowBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

.field private mPositionInMs:J

.field private mUpdateTimeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mId:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mUpdateTimeout:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mDisplayLaterBlocks:Ljava/util/List;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mDisplayNowBlocks:Ljava/util/List;

    iput p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mUpdateTimeout:I

    iput-wide p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mPositionInMs:J

    return-void
.end method


# virtual methods
.method public getDisplayLaterBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mDisplayLaterBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayNowBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mDisplayNowBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    return-object v0
.end method

.method public getPositionInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mPositionInMs:J

    return-wide v0
.end method

.method public getUpdateTimeout()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->mUpdateTimeout:I

    return v0
.end method
