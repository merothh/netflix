.class public Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;
.super Ljava/lang/Object;
.source "NetflixFMP4Parser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixFMP4Parser"

.field private static final TYPE_sidx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "sidx"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->TYPE_sidx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseSidxInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;
    .locals 6

    .prologue
    .line 35
    .line 37
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v4, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 40
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 41
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 42
    sget v5, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->TYPE_sidx:I

    if-ne v0, v5, :cond_0

    .line 43
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 44
    const-string/jumbo v0, "NetflixFMP4Parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sidx @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;

    int-to-long v4, v1

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;-><init>(JJ)V

    .line 54
    :goto_1
    return-object v0

    .line 47
    :cond_0
    add-int/lit8 v0, v1, -0x8

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    int-to-long v0, v1

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "NetflixFMP4Parser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParseSidxInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    goto :goto_1
.end method
