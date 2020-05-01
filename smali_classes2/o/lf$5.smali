.class Lo/lf$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aiW$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lf;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lo/lf$5;->c:Lo/lf;

    iput-object p2, p0, Lo/lf$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c(Lo/lf$5;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf$5;->e(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "Error: sendMessage"

    .line 590
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    iget-object p1, p0, Lo/lf$5;->c:Lo/lf;

    invoke-virtual {p1, p2}, Lo/lf;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x1f4

    .line 594
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/lf$5;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf$5;->d(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;I)V
    .locals 1

    .line 574
    iget-object v0, p0, Lo/lf$5;->c:Lo/lf;

    invoke-virtual {v0, p1}, Lo/lf;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y()V

    goto :goto_1

    .line 578
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public e(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
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

    .line 573
    iget-object p2, p0, Lo/lf$5;->c:Lo/lf;

    invoke-static {p2}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lo/lf$5;->a:Ljava/lang/String;

    new-instance v0, Lo/lw;

    invoke-direct {v0, p0, p3, p1}, Lo/lw;-><init>(Lo/lf$5;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 3

    .line 589
    iget-object v0, p0, Lo/lf$5;->c:Lo/lf;

    invoke-static {v0}, Lo/lf;->e(Lo/lf;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/lf$5;->a:Ljava/lang/String;

    new-instance v2, Lo/lx;

    invoke-direct {v2, p0, p1, v1}, Lo/lx;-><init>(Lo/lf$5;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
