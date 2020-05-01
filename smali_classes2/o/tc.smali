.class Lo/tc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/Format;

.field private final c:J

.field private final d:Lo/td;


# direct methods
.method public constructor <init>(Lo/td;JLcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tc;->d:Lo/td;

    iput-wide p2, p0, Lo/tc;->c:J

    iput-object p4, p0, Lo/tc;->a:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/tc;->d:Lo/td;

    iget-wide v1, p0, Lo/tc;->c:J

    iget-object v3, p0, Lo/tc;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v1, v2, v3}, Lo/td;->b(Lo/td;JLcom/google/android/exoplayer2/Format;)V

    return-void
.end method
