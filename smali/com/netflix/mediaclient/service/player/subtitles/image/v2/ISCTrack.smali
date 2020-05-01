.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;
.source "ISCTrack.java"


# static fields
.field public static final USER_TYPE_ITRK:Ljava/lang/String; = "com.netflix.itrk"


# instance fields
.field private iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

.field private masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

.field private versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.itrk"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISCTrack does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content size of box in bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getContentSizeInBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->loadBoxes(Ljava/io/DataInputStream;)V

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "All boxes loaded..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->verifyBoxes()V

    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "com.netflix.itrk"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBoxes(Ljava/io/DataInputStream;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Content to be parsed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->readBox(Ljava/io/DataInputStream;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Content left to be parsed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Left to parse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nf_subtitles_imv2"

    const-string/jumbo v4, "Either error or we do not have anything else to read!"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v3, "Clean exit for loadBoxes..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private readBox(Ljava/io/DataInputStream;)J
    .locals 8

    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "We found ISC header and it already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse ISC header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-direct {v0, v2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISC header found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Consumed content for ISC header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-wide v0

    :cond_4
    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "We found version info and it already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse VersionInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-direct {v0, v2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VersionInfo found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Consumed content for version info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "We found master index and it already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse MasterIndex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-direct {v0, v2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MasterIndex found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Consumed content for MasterIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getContentSizeInBytes()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "nf_subtitles_imv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uknown box: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skip it to nex box for [B]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p1, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "nf_subtitles_imv2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Really skipped [B]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readBoxHeader(Ljava/io/DataInputStream;I)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lt v0, p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyBoxes()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISCHeader is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VersionInfo is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MasterIndex is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    return-object v0
.end method

.method public getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    return-object v0
.end method

.method public getVersionInfo()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ISCTrack{iscHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", masterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
