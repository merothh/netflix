.class Lo/Thread$4$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Thread$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Thread$4;

.field final synthetic d:Lo/State$Application;


# direct methods
.method constructor <init>(Lo/Thread$4;Lo/State$Application;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iput-object p2, p0, Lo/Thread$4$5;->d:Lo/State$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 350
    iget-object v0, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iget-object v0, v0, Lo/Thread$4;->b:Lo/Thread;

    iget v0, v0, Lo/Thread;->e:I

    iget-object v1, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iget v1, v1, Lo/Thread$4;->c:I

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iget-object v0, v0, Lo/Thread$4;->b:Lo/Thread;

    iget-object v1, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iget-object v1, v1, Lo/Thread$4;->a:Ljava/util/List;

    iget-object v2, p0, Lo/Thread$4$5;->d:Lo/State$Application;

    iget-object v3, p0, Lo/Thread$4$5;->a:Lo/Thread$4;

    iget-object v3, v3, Lo/Thread$4;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lo/Thread;->e(Ljava/util/List;Lo/State$Application;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
