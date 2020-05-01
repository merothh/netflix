.class Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;
.super Ljava/io/FilterInputStream;
.source "MslControl.java"


# instance fields
.field private final conn:Lcom/netflix/msl/io/Url$Connection;

.field final synthetic this$1:Lcom/netflix/msl/msg/MslControl$RequestService;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl$RequestService;Lcom/netflix/msl/io/Url$Connection;)V
    .locals 1

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->this$1:Lcom/netflix/msl/msg/MslControl$RequestService;

    .line 2957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2958
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    .line 2959
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 2965
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 2972
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 2973
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .prologue
    .line 2977
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 2981
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2987
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 2988
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3002
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 2995
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3007
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3009
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    monitor-exit p0

    return-void

    .line 3007
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3016
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
