.class Lo/aiV$2;
.super Lo/aiR$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aiV;->d([Ljava/lang/String;Lo/aiV$Activity;)Lo/aiR$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/aiV;

.field final synthetic d:Lo/aiV$Activity;

.field final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/aiV;[Ljava/lang/String;Lo/aiV$Activity;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lo/aiV$2;->c:Lo/aiV;

    iput-object p2, p0, Lo/aiV$2;->e:[Ljava/lang/String;

    iput-object p3, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-direct {p0}, Lo/aiR$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lo/aiV$2;->c:Lo/aiV;

    iget-object v1, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-static {v0, p1, v1}, Lo/aiV;->b(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V

    return-void
.end method

.method public b()V
    .locals 6

    .line 271
    iget-object v0, p0, Lo/aiV$2;->c:Lo/aiV;

    invoke-static {v0}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lo/aiV$2;->c:Lo/aiV;

    invoke-static {v1}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/upnp/UpnpDevice;

    .line 273
    iget-object v3, p0, Lo/aiV$2;->c:Lo/aiV;

    invoke-virtual {v2}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v2

    iget-object v4, p0, Lo/aiV$2;->e:[Ljava/lang/String;

    iget-object v5, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-static {v3, v2, v4, v5}, Lo/aiV;->e(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V

    goto :goto_0

    .line 275
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v0, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-virtual {v0}, Lo/aiV$Activity;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 275
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(Lcom/netflix/ssdp/SsdpDevice;Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 2

    .line 254
    iget-object p1, p0, Lo/aiV$2;->c:Lo/aiV;

    iget-object v0, p0, Lo/aiV$2;->e:[Ljava/lang/String;

    iget-object v1, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-static {p1, p2, v0, v1}, Lo/aiV;->e(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 264
    iget-object v0, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-virtual {v0}, Lo/aiV$Activity;->d()V

    return-void
.end method

.method public e(Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lo/aiV$2;->c:Lo/aiV;

    iget-object v1, p0, Lo/aiV$2;->e:[Ljava/lang/String;

    iget-object v2, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-static {v0, p1, v1, v2}, Lo/aiV;->e(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lo/aiV$2;->d:Lo/aiV$Activity;

    invoke-virtual {v0, p1}, Lo/aiV$Activity;->d(Ljava/lang/Exception;)V

    return-void
.end method
