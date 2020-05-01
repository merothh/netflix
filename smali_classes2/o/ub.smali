.class Lo/ub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

.field private final d:Lo/ua;


# direct methods
.method public constructor <init>(Lo/ua;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ub;->d:Lo/ua;

    iput-object p2, p0, Lo/ub;->c:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ub;->d:Lo/ua;

    iget-object v1, p0, Lo/ub;->c:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-static {v0, v1}, Lo/ua;->c(Lo/ua;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    return-void
.end method
