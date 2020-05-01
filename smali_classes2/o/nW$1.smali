.class Lo/nW$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->a(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nW;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lo/nW$1;->a:Lo/nW;

    iput-object p2, p0, Lo/nW$1;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    iget-object v0, p0, Lo/nW$1;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->d(Lo/nW;)V

    .line 202
    iget-object v0, p0, Lo/nW$1;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 203
    iget-object v0, p0, Lo/nW$1;->a:Lo/nW;

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

    .line 204
    iget-object v2, p0, Lo/nW$1;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v1, v2}, Lo/nV;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method
