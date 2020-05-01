.class Lo/xN$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/xN;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/xN;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lo/xN$8;->b:Lo/xN;

    iput-object p2, p0, Lo/xN$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/xN$8;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 821
    iget-object v0, p0, Lo/xN$8;->b:Lo/xN;

    invoke-static {v0}, Lo/xN;->a(Lo/xN;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->getResourceFetcher()Lo/xZ;

    move-result-object v0

    iget-object v1, p0, Lo/xN$8;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/xZ;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_preappagentdatahandler"

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 822
    iget-object v4, p0, Lo/xN$8;->e:Ljava/lang/String;

    aput-object v4, v0, v1

    iget-object v1, p0, Lo/xN$8;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "localFilename: %s, filename: %s delete failed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 824
    iget-object v2, p0, Lo/xN$8;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "deleted local file: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
