.class Lo/Ml$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ml;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ml;


# direct methods
.method constructor <init>(Lo/Ml;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/Ml$3;->a:Lo/Ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 89
    iget-object p1, p0, Lo/Ml$3;->a:Lo/Ml;

    iget-object p1, p1, Lo/Ml;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 90
    :try_start_0
    iget-object p2, p0, Lo/Ml$3;->a:Lo/Ml;

    iget-object p2, p2, Lo/Ml;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "mdxui"

    const-string v0, "Already clicked!"

    .line 91
    invoke-static {p2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit p1

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lo/Ml$3;->a:Lo/Ml;

    iget-object p2, p2, Lo/Ml;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iget-object p2, p0, Lo/Ml$3;->a:Lo/Ml;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/Ml;->d(Lo/Ml;Z)V

    .line 97
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
