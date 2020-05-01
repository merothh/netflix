.class Lo/StorageEventListener$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageEventListener$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StorageEventListener;->d(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StorageEventListener;

.field final synthetic b:Lo/StorageEventListener$Application;

.field final synthetic c:Lcom/netflix/upnp/UpnpDevice;


# direct methods
.method constructor <init>(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    iput-object p2, p0, Lo/StorageEventListener$3;->c:Lcom/netflix/upnp/UpnpDevice;

    iput-object p3, p0, Lo/StorageEventListener$3;->b:Lo/StorageEventListener$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/dial/DialDevice;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {v0}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    iget-object v2, p0, Lo/StorageEventListener$3;->c:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v2}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/StorageEventListener;->d(Lo/StorageEventListener;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {v1}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lo/StorageEventListener$3;->b:Lo/StorageEventListener$Application;

    invoke-virtual {v1, p1}, Lo/StorageEventListener$Application;->d(Lcom/netflix/dial/DialDevice;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1, v1}, Lcom/netflix/dial/DialDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    iget-object v2, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {v2}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {v2}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lo/StorageEventListener$3;->b:Lo/StorageEventListener$Application;

    invoke-virtual {v2, v1, p1}, Lo/StorageEventListener$Application;->b(Lcom/netflix/dial/DialDevice;Lcom/netflix/dial/DialDevice;)V

    .line 239
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 244
    iget-object p1, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {p1}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 245
    :try_start_0
    iget-object v0, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    iget-object v1, p0, Lo/StorageEventListener$3;->c:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/StorageEventListener;->d(Lo/StorageEventListener;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lo/StorageEventListener$3;->a:Lo/StorageEventListener;

    invoke-static {v1}, Lo/StorageEventListener;->e(Lo/StorageEventListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lo/StorageEventListener$3;->b:Lo/StorageEventListener$Application;

    invoke-virtual {v1, v0}, Lo/StorageEventListener$Application;->e(Lcom/netflix/dial/DialDevice;)V

    .line 250
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
