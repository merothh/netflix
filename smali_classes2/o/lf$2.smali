.class Lo/lf$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageEventListener$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lf;->b(Lo/mm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/mm;

.field final synthetic e:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;Lo/mm;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lo/lf$2;->e:Lo/lf;

    iput-object p2, p0, Lo/lf$2;->d:Lo/mm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/netflix/dial/DialDevice;Lo/mm;)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object p1

    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->e:Lcom/netflix/dial/DialDevice$AppState;

    const-string v1, "MdxStackDial"

    if-eq p1, v0, :cond_0

    const-string p1, "Target not running, so launching"

    .line 319
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {p1, p2}, Lo/lf;->a(Lo/lf;Lo/mm;)V

    goto :goto_0

    :cond_0
    const-string p1, "Target says it\'s already running - checking for MDX target"

    .line 322
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lo/lf$2;->e:Lo/lf;

    const/4 v0, 0x5

    invoke-static {p1, p2, v0}, Lo/lf;->e(Lo/lf;Lo/mm;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Found MDX target, so launch was successful"

    .line 326
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p2}, Lo/mm;->j()V

    .line 328
    iget-object p1, p0, Lo/lf$2;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    goto :goto_0

    :cond_1
    const-string p1, "Didn\'t find MDX target, so launching target instead"

    .line 330
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {p1, p2}, Lo/lf;->a(Lo/lf;Lo/mm;)V

    :goto_0
    return-void
.end method

.method private synthetic b(Lo/mm;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {v0}, Lo/lf;->a(Lo/lf;)Lo/aiR;

    move-result-object v0

    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aiR;->b(Lcom/netflix/ssdp/SsdpDevice;)V

    .line 343
    invoke-virtual {p1}, Lo/mm;->p()V

    .line 344
    iget-object v0, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {v0, p1}, Lo/lf;->d(Lo/lf;Lo/mm;)V

    return-void
.end method

.method static synthetic e(Lo/lf$2;Lcom/netflix/dial/DialDevice;Lo/mm;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf$2;->a(Lcom/netflix/dial/DialDevice;Lo/mm;)V

    return-void
.end method

.method static synthetic e(Lo/lf$2;Lo/mm;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/lf$2;->b(Lo/mm;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/dial/DialDevice;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice$AppState;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MdxStackDial"

    const-string v2, "Successfully got device state.  State: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 317
    iget-object v0, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {v0}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/lf$2;->d:Lo/mm;

    new-instance v2, Lo/ls;

    invoke-direct {v2, p0, p1, v1}, Lo/ls;-><init>(Lo/lf$2;Lcom/netflix/dial/DialDevice;Lo/mm;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 8

    .line 340
    iget-object v0, p0, Lo/lf$2;->d:Lo/mm;

    invoke-virtual {v0}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {v2}, Lo/lf;->c(Lo/lf;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 341
    iget-object p1, p0, Lo/lf$2;->e:Lo/lf;

    invoke-static {p1}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/lf$2;->d:Lo/mm;

    new-instance v1, Lo/lv;

    invoke-direct {v1, p0, v0}, Lo/lv;-><init>(Lo/lf$2;Lo/mm;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "MdxStackDial"

    const-string v1, "Failed to get device state prior to launch"

    .line 350
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    new-instance p1, Lo/ku;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to launch target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lf$2;->d:Lo/mm;

    invoke-virtual {v1}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    sget-object v5, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v6, 0x0

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    .line 353
    iget-object v0, p0, Lo/lf$2;->d:Lo/mm;

    invoke-virtual {v0, p1}, Lo/mm;->b(Lo/ku;)V

    return-void
.end method
