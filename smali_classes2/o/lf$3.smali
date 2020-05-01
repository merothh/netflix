.class Lo/lf$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageEventListener$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lf;->e(Lo/mm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/mm;

.field final synthetic b:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;Lo/mm;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/lf$3;->b:Lo/lf;

    iput-object p2, p0, Lo/lf$3;->a:Lo/mm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lo/mm;)V
    .locals 8

    const-string v0, "MdxStackDial"

    const-string v1, "Waiting to find MDX target"

    .line 366
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lo/lf$3;->b:Lo/lf;

    const/16 v2, 0x1e

    invoke-static {v1, p1, v2}, Lo/lf;->e(Lo/lf;Lo/mm;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MDX target found, so launch was successful"

    .line 370
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1}, Lo/mm;->j()V

    .line 372
    iget-object p1, p0, Lo/lf$3;->b:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to find MDX device after launch"

    .line 374
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Lo/ku;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find MDX device after launch for target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p1}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    sget-object v5, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v6, 0x0

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    .line 379
    invoke-virtual {p1, v0}, Lo/mm;->b(Lo/ku;)V

    :goto_0
    return-void
.end method

.method private static synthetic b(Lo/mm;Ljava/lang/Exception;)V
    .locals 7

    .line 389
    new-instance v6, Lo/ku;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 390
    invoke-virtual {p0}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Failed to launch target: %s.  Error: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    sget-object v5, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    .line 393
    invoke-virtual {p0, v6}, Lo/mm;->b(Lo/ku;)V

    return-void
.end method

.method static synthetic d(Lo/lf$3;Lo/mm;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/lf$3;->a(Lo/mm;)V

    return-void
.end method

.method static synthetic e(Lo/mm;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lo/lf$3;->b(Lo/mm;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to launch target with UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lf$3;->a:Lo/mm;

    invoke-virtual {v1}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdxStackDial"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    iget-object v0, p0, Lo/lf$3;->b:Lo/lf;

    invoke-static {v0}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/lf$3;->a:Lo/mm;

    new-instance v2, Lo/lt;

    invoke-direct {v2, v1, p1}, Lo/lt;-><init>(Lo/mm;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lo/lf$3;->a:Lo/mm;

    invoke-virtual {v1}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MdxStackDial"

    const-string v2, "Successfully sent launch request to target with UUID: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    iget-object v0, p0, Lo/lf$3;->b:Lo/lf;

    invoke-static {v0}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/lf$3;->a:Lo/mm;

    new-instance v2, Lo/lu;

    invoke-direct {v2, p0, v1}, Lo/lu;-><init>(Lo/lf$3;Lo/mm;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
