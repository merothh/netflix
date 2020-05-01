.class Lo/lg$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lg;-><init>(Landroid/content/Context;Lo/zE;Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/subjects/CompletableSubject;

.field final synthetic d:Lo/lg;


# direct methods
.method constructor <init>(Lo/lg;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/lg$4;->d:Lo/lg;

    iput-object p2, p0, Lo/lg$4;->b:Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "MdxStackCaf"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "Initializing CastContext and getting MediaRouter..."

    .line 77
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lo/lg$4;->d:Lo/lg;

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    iget-object v3, v3, Lo/lg;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v3

    invoke-static {v2, v3}, Lo/lg;->e(Lo/lg;Lcom/google/android/gms/cast/framework/CastContext;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 80
    iget-object v2, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v2}, Lo/lg;->e(Lo/lg;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v2

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/framework/CastContext;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 81
    iget-object v2, p0, Lo/lg$4;->d:Lo/lg;

    new-instance v3, Lo/kN;

    iget-object v4, p0, Lo/lg$4;->d:Lo/lg;

    iget-object v4, v4, Lo/lg;->d:Landroid/content/Context;

    iget-object v5, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v5}, Lo/lg;->e(Lo/lg;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v5

    iget-object v6, p0, Lo/lg$4;->d:Lo/lg;

    invoke-direct {v3, v4, v5, v6}, Lo/kN;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lo/kK;)V

    invoke-static {v2, v3}, Lo/lg;->c(Lo/lg;Lo/kN;)Lo/kN;

    .line 82
    iget-object v2, p0, Lo/lg$4;->d:Lo/lg;

    new-instance v9, Lo/kJ;

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v3}, Lo/lg;->e(Lo/lg;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v4

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v3}, Lo/lg;->b(Lo/lg;)Landroid/os/Handler;

    move-result-object v5

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v3}, Lo/lg;->a(Lo/lg;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lo/lg$4;->d:Lo/lg;

    iget-object v7, v3, Lo/lg;->b:Lo/kO;

    iget-object v8, p0, Lo/lg$4;->d:Lo/lg;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lo/kJ;-><init>(Lcom/google/android/gms/cast/framework/CastContext;Landroid/os/Handler;Ljava/lang/String;Lo/kO;Lo/kL;)V

    invoke-static {v2, v9}, Lo/lg;->b(Lo/lg;Lo/kJ;)Lo/kJ;

    .line 84
    iget-object v2, p0, Lo/lg$4;->d:Lo/lg;

    invoke-static {v2, v1}, Lo/lg;->a(Lo/lg;Z)Z

    const-string v2, "Successfully initialized CAF"

    .line 86
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lo/lg$4;->b:Lio/reactivex/subjects/CompletableSubject;

    invoke-virtual {v2}, Lio/reactivex/subjects/CompletableSubject;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Failed to init - error: %s"

    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    iget-object v0, p0, Lo/lg$4;->b:Lio/reactivex/subjects/CompletableSubject;

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/CompletableSubject;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
