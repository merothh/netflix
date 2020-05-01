.class Lo/wL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final c:Lo/wG;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wL;->c:Lo/wG;

    iput-object p2, p0, Lo/wL;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-wide p3, p0, Lo/wL;->e:J

    iput-wide p5, p0, Lo/wL;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lo/wL;->c:Lo/wG;

    iget-object v1, p0, Lo/wL;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, p0, Lo/wL;->e:J

    iget-wide v4, p0, Lo/wL;->d:J

    invoke-static/range {v0 .. v5}, Lo/wG;->e(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V

    return-void
.end method
