.class Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "VolleyCacheWrapper.java"


# instance fields
.field private bytesRead:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$1;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 122
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 123
    iget v1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    .line 125
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 131
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 132
    iget v1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->bytesRead:I

    .line 134
    :cond_0
    return v0
.end method