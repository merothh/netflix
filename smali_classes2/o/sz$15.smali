.class Lo/sz$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/sz;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/sz;Z)V
    .locals 0

    .line 342
    iput-object p1, p0, Lo/sz$15;->c:Lo/sz;

    iput-boolean p2, p0, Lo/sz$15;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 345
    iget-object v0, p0, Lo/sz$15;->c:Lo/sz;

    invoke-static {v0}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 346
    iget-object v0, p0, Lo/sz$15;->c:Lo/sz;

    invoke-static {v0}, Lo/sz;->f(Lo/sz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-boolean v0, p0, Lo/sz$15;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/sz$15;->c:Lo/sz;

    invoke-static {v0}, Lo/sz;->a(Lo/sz;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lo/sz$15;->c:Lo/sz;

    invoke-static {v0}, Lo/sz;->c(Lo/sz;)Lo/sJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/sJ;->d()I

    move-result v0

    .line 349
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "M-CACHE-PERSIST, clear, removed %s entries"

    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method
