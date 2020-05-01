.class Lo/MultiWindowModeChangeItem$3$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MultiWindowModeChangeItem$3;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic e:Lo/MultiWindowModeChangeItem$3;


# direct methods
.method constructor <init>(Lo/MultiWindowModeChangeItem$3;Ljava/lang/Runnable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/MultiWindowModeChangeItem$3$5;->e:Lo/MultiWindowModeChangeItem$3;

    iput-object p2, p0, Lo/MultiWindowModeChangeItem$3$5;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 44
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 45
    iget-object v0, p0, Lo/MultiWindowModeChangeItem$3$5;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
