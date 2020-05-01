.class Lo/nW$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->e(Landroid/os/Handler;Lo/Bi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Bi;

.field final synthetic d:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lo/Bi;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/nW$8;->d:Lo/nW;

    iput-object p2, p0, Lo/nW$8;->a:Lo/Bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lo/nW$8;->d:Lo/nW;

    invoke-static {v0}, Lo/nW;->d(Lo/nW;)V

    .line 87
    iget-object v0, p0, Lo/nW$8;->d:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 88
    iget-object v0, p0, Lo/nW$8;->d:Lo/nW;

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

    .line 89
    iget-object v2, p0, Lo/nW$8;->a:Lo/Bi;

    invoke-interface {v1, v2}, Lo/nV;->e(Lo/Bi;)V

    goto :goto_0

    :cond_0
    return-void
.end method
