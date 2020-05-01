.class Lo/Ml$1;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ml;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Ml;


# direct methods
.method constructor <init>(Lo/Ml;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lo/Ml$1;->b:Lo/Ml;

    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/WebChromeClient;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lo/Ml$1;->b:Lo/Ml;

    iget-object p1, p1, Lo/Ml;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 105
    :try_start_0
    iget-object v0, p0, Lo/Ml$1;->b:Lo/Ml;

    iget-object v0, v0, Lo/Ml;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p1

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lo/Ml$1;->b:Lo/Ml;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/Ml;->d(Lo/Ml;Z)V

    .line 110
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
