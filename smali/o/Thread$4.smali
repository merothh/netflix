.class Lo/Thread$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Thread;->d(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/Thread;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/Thread;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/Thread$4;->b:Lo/Thread;

    iput-object p2, p0, Lo/Thread$4;->e:Ljava/util/List;

    iput-object p3, p0, Lo/Thread$4;->a:Ljava/util/List;

    iput p4, p0, Lo/Thread$4;->c:I

    iput-object p5, p0, Lo/Thread$4;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    new-instance v0, Lo/Thread$4$4;

    invoke-direct {v0, p0}, Lo/Thread$4$4;-><init>(Lo/Thread$4;)V

    invoke-static {v0}, Lo/State;->b(Lo/State$ActionBar;)Lo/State$Application;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lo/Thread$4;->b:Lo/Thread;

    iget-object v1, v1, Lo/Thread;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/Thread$4$5;

    invoke-direct {v2, p0, v0}, Lo/Thread$4$5;-><init>(Lo/Thread$4;Lo/State$Application;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
