.class Lo/StorageEventListener$1;
.super Lo/aiV$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StorageEventListener;->c(Ljava/lang/String;Lo/StorageEventListener$Application;)Lo/aiV$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/StorageEventListener;

.field final synthetic d:Lo/StorageEventListener$Application;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/StorageEventListener;Ljava/lang/String;Lo/StorageEventListener$Application;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    iput-object p2, p0, Lo/StorageEventListener$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-direct {p0}, Lo/aiV$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .line 323
    iget-object v0, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    invoke-static {v0}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    invoke-static {v1}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/dial/DialDevice;

    .line 325
    iget-object v3, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    invoke-virtual {v2}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v2

    iget-object v4, p0, Lo/StorageEventListener$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-static {v3, v2, v4, v5}, Lo/StorageEventListener;->b(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V

    goto :goto_0

    .line 327
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v0, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-virtual {v0}, Lo/StorageEventListener$Application;->d()V

    return-void

    :catchall_0
    move-exception v1

    .line 327
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(Lcom/netflix/upnp/UpnpDevice;Lcom/netflix/upnp/UpnpDevice;)V
    .locals 2

    .line 306
    iget-object p1, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    iget-object v0, p0, Lo/StorageEventListener$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-static {p1, p2, v0, v1}, Lo/StorageEventListener;->b(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 316
    iget-object v0, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-virtual {v0}, Lo/StorageEventListener$Application;->c()V

    return-void
.end method

.method public d(Lcom/netflix/upnp/UpnpDevice;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    iget-object v1, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-static {v0, p1, v1}, Lo/StorageEventListener;->c(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-virtual {v0, p1}, Lo/StorageEventListener$Application;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public e(Lcom/netflix/upnp/UpnpDevice;)V
    .locals 3

    .line 296
    iget-object v0, p0, Lo/StorageEventListener$1;->c:Lo/StorageEventListener;

    iget-object v1, p0, Lo/StorageEventListener$1;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/StorageEventListener$1;->d:Lo/StorageEventListener$Application;

    invoke-static {v0, p1, v1, v2}, Lo/StorageEventListener;->b(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V

    return-void
.end method
