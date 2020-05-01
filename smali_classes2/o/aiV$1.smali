.class Lo/aiV$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aiW$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aiV;->a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/ssdp/SsdpDevice;

.field final synthetic c:Lo/aiV$StateListAnimator;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lo/aiV;


# direct methods
.method constructor <init>(Lo/aiV;Ljava/lang/String;Lo/aiV$StateListAnimator;[Ljava/lang/String;Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/aiV$1;->e:Lo/aiV;

    iput-object p2, p0, Lo/aiV$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/aiV$1;->c:Lo/aiV$StateListAnimator;

    iput-object p4, p0, Lo/aiV$1;->d:[Ljava/lang/String;

    iput-object p5, p0, Lo/aiV$1;->b:Lcom/netflix/ssdp/SsdpDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ILjava/util/Map;Ljava/lang/String;)V
    .locals 6
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

    const/4 v0, 0x0

    const-string v1, "UpnpClient"

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt p1, v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v2, p0, Lo/aiV$1;->d:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 147
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_2
    :try_start_0
    iget-object p2, p0, Lo/aiV$1;->e:Lo/aiV;

    invoke-static {p2}, Lo/aiV;->a(Lo/aiV;)Lo/aiV$TaskDescription;

    move-result-object p2

    iget-object v0, p0, Lo/aiV$1;->b:Lcom/netflix/ssdp/SsdpDevice;

    invoke-interface {p2, v0, p1, p3}, Lo/aiV$TaskDescription;->c(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    iget-object p2, p0, Lo/aiV$1;->c:Lo/aiV$StateListAnimator;

    invoke-interface {p2, p1}, Lo/aiV$StateListAnimator;->a(Lcom/netflix/upnp/UpnpDevice;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to get UpnpDevice from device info response"

    .line 156
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    iget-object p2, p0, Lo/aiV$1;->c:Lo/aiV$StateListAnimator;

    invoke-interface {p2, p1}, Lo/aiV$StateListAnimator;->b(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :goto_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    iget-object p3, p0, Lo/aiV$1;->a:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "Received non-200 status code from device info response.  statusCode: %d, location: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p2, p0, Lo/aiV$1;->c:Lo/aiV$StateListAnimator;

    new-instance p3, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received non-200 status code from device info response.  Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lo/aiV$StateListAnimator;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "UpnpClient"

    const-string v1, "Failed to get device info"

    .line 166
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v0, p0, Lo/aiV$1;->c:Lo/aiV$StateListAnimator;

    invoke-interface {v0, p1}, Lo/aiV$StateListAnimator;->b(Ljava/lang/Exception;)V

    return-void
.end method
