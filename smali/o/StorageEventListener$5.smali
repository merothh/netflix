.class Lo/StorageEventListener$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aiW$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StorageEventListener;->b(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/upnp/UpnpDevice;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/StorageEventListener$TaskDescription;

.field final synthetic d:Ljava/lang/Boolean;

.field final synthetic e:Lo/StorageEventListener;


# direct methods
.method constructor <init>(Lo/StorageEventListener;Ljava/lang/Boolean;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/StorageEventListener$5;->e:Lo/StorageEventListener;

    iput-object p2, p0, Lo/StorageEventListener$5;->d:Ljava/lang/Boolean;

    iput-object p3, p0, Lo/StorageEventListener$5;->a:Lcom/netflix/upnp/UpnpDevice;

    iput-object p4, p0, Lo/StorageEventListener$5;->b:Ljava/lang/String;

    iput-object p5, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ILjava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "DialClient"

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    :try_start_0
    iget-object p1, p0, Lo/StorageEventListener$5;->e:Lo/StorageEventListener;

    invoke-static {p1}, Lo/StorageEventListener;->d(Lo/StorageEventListener;)Lo/StorageEventListener$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StorageEventListener$5;->a:Lcom/netflix/upnp/UpnpDevice;

    invoke-interface {p1, v0, p3}, Lo/StorageEventListener$Activity;->a(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully got device state for device: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/StorageEventListener$5;->a:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p2, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    invoke-interface {p2, p1}, Lo/StorageEventListener$TaskDescription;->b(Lcom/netflix/dial/DialDevice;)V

    return-void

    :catch_0
    move-exception p1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get DIAL device from app state response.  Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    iget-object p2, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    invoke-interface {p2, p1}, Lo/StorageEventListener$TaskDescription;->c(Ljava/lang/Exception;)V

    return-void

    .line 182
    :cond_1
    :goto_0
    iget-object p3, p0, Lo/StorageEventListener$5;->d:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 185
    iget-object p1, p0, Lo/StorageEventListener$5;->e:Lo/StorageEventListener;

    iget-object p2, p0, Lo/StorageEventListener$5;->a:Lcom/netflix/upnp/UpnpDevice;

    iget-object p3, p0, Lo/StorageEventListener$5;->b:Ljava/lang/String;

    iget-object v0, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lo/StorageEventListener;->b(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;Ljava/lang/Boolean;)V

    return-void

    .line 189
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received non-200 status code from device state response.  Status: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p2, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    new-instance p3, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lo/StorageEventListener$TaskDescription;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get device state for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/StorageEventListener$5;->a:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialClient"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    iget-object v0, p0, Lo/StorageEventListener$5;->c:Lo/StorageEventListener$TaskDescription;

    invoke-interface {v0, p1}, Lo/StorageEventListener$TaskDescription;->c(Ljava/lang/Exception;)V

    return-void
.end method
