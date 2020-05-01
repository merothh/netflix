.class Lo/nW$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->c(Landroid/os/Handler;Lo/Bi;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nW;

.field final synthetic c:I

.field final synthetic d:Lo/Bi;


# direct methods
.method constructor <init>(Lo/nW;Lo/Bi;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/nW$6;->b:Lo/nW;

    iput-object p2, p0, Lo/nW$6;->d:Lo/Bi;

    iput p3, p0, Lo/nW$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    iget-object v0, p0, Lo/nW$6;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->e(Lo/nW;)V

    .line 71
    iget-object v0, p0, Lo/nW$6;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 72
    iget-object v0, p0, Lo/nW$6;->b:Lo/nW;

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

    .line 73
    iget-object v2, p0, Lo/nW$6;->d:Lo/Bi;

    iget v3, p0, Lo/nW$6;->c:I

    invoke-interface {v1, v2, v3}, Lo/nV;->a(Lo/Bi;I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lo/nW$6;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->a(Lo/nW;)V

    return-void
.end method
