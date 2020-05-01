.class Lo/rH$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rH;->onPlayerStateChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/rH;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/rH;IZ)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/rH$2;->b:Lo/rH;

    iput p2, p0, Lo/rH$2;->a:I

    iput-boolean p3, p0, Lo/rH$2;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget v0, p0, Lo/rH$2;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lo/rH$2;->b:Lo/rH;

    invoke-static {v0}, Lo/rH;->a(Lo/rH;)Lo/pt;

    move-result-object v0

    invoke-interface {v0}, Lo/pt;->b()V

    goto :goto_0

    .line 57
    :cond_1
    iget-boolean v0, p0, Lo/rH$2;->e:Z

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lo/rH$2;->b:Lo/rH;

    invoke-static {v0}, Lo/rH;->e(Lo/rH;)Lo/pt;

    move-result-object v0

    invoke-interface {v0}, Lo/pt;->a()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lo/rH$2;->b:Lo/rH;

    invoke-static {v0}, Lo/rH;->d(Lo/rH;)Lo/pt;

    move-result-object v0

    invoke-interface {v0}, Lo/pt;->d()V

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lo/rH$2;->b:Lo/rH;

    invoke-static {v0}, Lo/rH;->c(Lo/rH;)Lo/pt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/pt;->e(Z)V

    :goto_0
    return-void
.end method
