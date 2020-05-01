.class Lo/aiV$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aiV$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aiV;->a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/aiV$Activity;

.field final synthetic b:Lo/aiV;

.field final synthetic e:Lcom/netflix/ssdp/SsdpDevice;


# direct methods
.method constructor <init>(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lo/aiV$3;->b:Lo/aiV;

    iput-object p2, p0, Lo/aiV$3;->e:Lcom/netflix/ssdp/SsdpDevice;

    iput-object p3, p0, Lo/aiV$3;->a:Lo/aiV$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/upnp/UpnpDevice;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v0}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lo/aiV$3;->e:Lcom/netflix/ssdp/SsdpDevice;

    invoke-virtual {v1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v2, v1}, Lo/aiV;->b(Lo/aiV;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v1}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lo/aiV$3;->a:Lo/aiV$Activity;

    invoke-virtual {v1, p1}, Lo/aiV$Activity;->e(Lcom/netflix/upnp/UpnpDevice;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1, v1}, Lcom/netflix/upnp/UpnpDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v2}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v2}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lo/aiV$3;->a:Lo/aiV$Activity;

    invoke-virtual {v2, v1, p1}, Lo/aiV$Activity;->c(Lcom/netflix/upnp/UpnpDevice;Lcom/netflix/upnp/UpnpDevice;)V

    .line 198
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

.method public b(Ljava/lang/Exception;)V
    .locals 3

    .line 203
    iget-object p1, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {p1}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 204
    :try_start_0
    iget-object v0, p0, Lo/aiV$3;->e:Lcom/netflix/ssdp/SsdpDevice;

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v1, v0}, Lo/aiV;->b(Lo/aiV;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v1}, Lo/aiV;->c(Lo/aiV;)Lo/aiR;

    move-result-object v1

    iget-object v2, p0, Lo/aiV$3;->e:Lcom/netflix/ssdp/SsdpDevice;

    invoke-virtual {v1, v2}, Lo/aiR;->d(Lcom/netflix/ssdp/SsdpDevice;)V

    .line 209
    iget-object v1, p0, Lo/aiV$3;->b:Lo/aiV;

    invoke-static {v1}, Lo/aiV;->b(Lo/aiV;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lo/aiV$3;->a:Lo/aiV$Activity;

    invoke-virtual {v1, v0}, Lo/aiV$Activity;->d(Lcom/netflix/upnp/UpnpDevice;)V

    .line 212
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
