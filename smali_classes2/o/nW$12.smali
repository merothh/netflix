.class Lo/nW$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->b(Landroid/os/Handler;Lo/Bi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nW;

.field final synthetic c:Lo/Bi;


# direct methods
.method constructor <init>(Lo/nW;Lo/Bi;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/nW$12;->b:Lo/nW;

    iput-object p2, p0, Lo/nW$12;->c:Lo/Bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lo/nW$12;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->e(Lo/nW;)V

    .line 119
    iget-object v0, p0, Lo/nW$12;->b:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 120
    iget-object v0, p0, Lo/nW$12;->b:Lo/nW;

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

    .line 121
    iget-object v2, p0, Lo/nW$12;->c:Lo/Bi;

    invoke-interface {v1, v2}, Lo/nV;->d(Lo/Bi;)V

    goto :goto_0

    :cond_0
    return-void
.end method
