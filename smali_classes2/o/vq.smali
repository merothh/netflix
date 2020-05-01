.class public Lo/vq;
.super Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.source ""


# instance fields
.field private final b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tK;)V
    .locals 4

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    const/4 p1, 0x2

    :try_start_0
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const p2, 0xa483

    const/16 v2, 0xac

    const/4 v3, 0x4

    .line 35
    invoke-static {p2, v2, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Class;

    const-class v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    aput-object v2, p1, p3

    const-class p3, Lo/tK;

    aput-object p3, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lo/vq;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method private a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 10

    const/4 p3, 0x0

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4

    .line 123
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 124
    aget-object v4, p2, v1

    const/4 v5, 0x0

    .line 125
    :goto_1
    iget v6, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_3

    .line 126
    aget v6, v4, v5

    invoke-static {v6, v0}, Lo/vq;->isSupported(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 128
    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    .line 130
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 131
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 132
    instance-of v9, v8, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    if-eqz v9, :cond_1

    .line 133
    check-cast v8, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    .line 134
    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_3
    if-ne v1, v3, :cond_5

    return-object p3

    .line 150
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    if-eqz p4, :cond_8

    const/4 p2, 0x1

    :try_start_0
    new-array p5, p2, [Ljava/lang/Object;

    aput-object p1, p5, v0

    const v1, 0xa483

    const/16 v2, 0xac

    const/4 v3, 0x4

    .line 151
    invoke-static {v1, v2, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "c"

    new-array p2, p2, [Ljava/lang/Class;

    const-class v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v3, p2, v0

    invoke-virtual {v1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p3, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_8

    .line 152
    iget p2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array p2, p2, [I

    .line 153
    :goto_4
    iget p3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, p3, :cond_6

    .line 154
    aput v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 156
    :cond_6
    array-length p3, p2

    if-lez p3, :cond_8

    .line 157
    invoke-interface {p4, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    throw p2

    :cond_7
    throw p1

    .line 160
    :cond_8
    new-instance p2, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {p2, p1, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    return-object p2
.end method

.method private a(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 2

    .line 178
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private c(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 5

    .line 164
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-lez v0, :cond_1

    .line 165
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const p1, 0xa483

    const/16 v3, 0xac

    const/4 v4, 0x4

    invoke-static {p1, v3, v4}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v3, "c"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v4, v0, v1

    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/vq;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lo/vq;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lo/vq;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/vq;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lo/vq;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lo/vq;->invalidate()V

    :cond_0
    return-void
.end method

.method public selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 6

    .line 78
    invoke-static {}, Lo/dS;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    invoke-direct {p0, p1}, Lo/vq;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p4, p0, Lo/vq;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    :cond_0
    if-nez p4, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lo/vq;->c(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object p4, p0, Lo/vq;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 86
    :cond_1
    iget-object v5, p0, Lo/vq;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lo/vq;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 90
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 6

    .line 97
    iget-object v5, p0, Lo/vq;->d:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/vq;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lo/vq;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method
