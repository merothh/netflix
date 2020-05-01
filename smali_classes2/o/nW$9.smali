.class Lo/nW$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->e(Landroid/os/Handler;Lo/nV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nV;

.field final synthetic b:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lo/nV;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lo/nW$9;->b:Lo/nW;

    iput-object p2, p0, Lo/nW$9;->a:Lo/nV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 327
    iget-object v0, p0, Lo/nW$9;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/nW$9;->a:Lo/nV;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lo/nW$9;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lo/nW$9;->b:Lo/nW;

    invoke-static {v1}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "removeOfflineAgentListener after count=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
