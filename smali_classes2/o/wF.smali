.class Lo/wF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/wG;

.field private final b:J

.field private final d:Lcom/google/android/exoplayer2/upstream/DataSpec;


# direct methods
.method public constructor <init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wF;->a:Lo/wG;

    iput-object p2, p0, Lo/wF;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-wide p3, p0, Lo/wF;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/wF;->a:Lo/wG;

    iget-object v1, p0, Lo/wF;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, p0, Lo/wF;->b:J

    invoke-static {v0, v1, v2, v3}, Lo/wG;->a(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;J)V

    return-void
.end method
