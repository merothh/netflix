.class public interface abstract Lo/H;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/H;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public abstract c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;
.end method

.method public abstract d()I
.end method

.method public abstract d(Ljava/lang/String;Lcom/android/volley/Request$Priority;Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)Lo/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/B;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
