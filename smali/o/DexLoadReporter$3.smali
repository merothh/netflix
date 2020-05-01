.class Lo/DexLoadReporter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DexLoadReporter;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DexLoadReporter;

.field final synthetic c:Lcom/android/volley/Request;


# direct methods
.method constructor <init>(Lo/DexLoadReporter;Lcom/android/volley/Request;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/DexLoadReporter$3;->a:Lo/DexLoadReporter;

    iput-object p2, p0, Lo/DexLoadReporter$3;->c:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    :try_start_0
    iget-object v0, p0, Lo/DexLoadReporter$3;->a:Lo/DexLoadReporter;

    invoke-static {v0}, Lo/DexLoadReporter;->e(Lo/DexLoadReporter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lo/DexLoadReporter$3;->c:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
