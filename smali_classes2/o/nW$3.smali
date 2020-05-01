.class Lo/nW$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->c(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nW;

.field final synthetic c:Lo/Bi;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/nW;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lo/nW$3;->a:Lo/nW;

    iput-object p2, p0, Lo/nW$3;->c:Lo/Bi;

    iput-object p3, p0, Lo/nW$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    iget-object v0, p0, Lo/nW$3;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 219
    iget-object v0, p0, Lo/nW$3;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nV;

    .line 220
    iget-object v2, p0, Lo/nW$3;->c:Lo/Bi;

    iget-object v3, p0, Lo/nW$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v1, v2, v3}, Lo/nV;->c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method
