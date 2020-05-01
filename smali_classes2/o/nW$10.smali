.class Lo/nW$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->c(Landroid/os/Handler;Lo/nV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/nV;

.field final synthetic e:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lo/nV;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lo/nW$10;->e:Lo/nW;

    iput-object p2, p0, Lo/nW$10;->c:Lo/nV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    iget-object v0, p0, Lo/nW$10;->e:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 298
    iget-object v0, p0, Lo/nW$10;->e:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/nW$10;->c:Lo/nV;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nf_offlineAgent"

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lo/nW$10;->e:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lo/nW$10;->c:Lo/nV;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 300
    iget-object v3, p0, Lo/nW$10;->e:Lo/nW;

    invoke-static {v3}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "addOfflineAgentListener after count=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string v0, "already added addOfflineAgentListener"

    .line 302
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
