.class public Lo/kd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Z = true


# instance fields
.field private a:J

.field private final b:J

.field public d:J

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lo/kd;->b:J

    .line 11
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lo/kd;->e:Ljava/lang/Object;

    .line 14
    iput-wide v0, p0, Lo/kd;->a:J

    return-void
.end method

.method private b(Ljava/lang/Long;)V
    .locals 4

    .line 54
    iget-wide v0, p0, Lo/kd;->d:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/kd;->d:J

    return-void
.end method

.method private c(JZ)V
    .locals 5

    .line 28
    iget-wide v0, p0, Lo/kd;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 29
    iput-wide p1, p0, Lo/kd;->a:J

    return-void

    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 35
    iput-wide p1, p0, Lo/kd;->a:J

    return-void

    :cond_1
    sub-long v0, p1, v0

    .line 39
    invoke-direct {p0, v0, v1, p3}, Lo/kd;->e(JZ)V

    .line 40
    iput-wide p1, p0, Lo/kd;->a:J

    return-void
.end method

.method private e(JZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p3, p0, Lo/kd;->e:Ljava/lang/Object;

    monitor-enter p3

    .line 49
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/kd;->b(Ljava/lang/Long;)V

    .line 50
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lo/kd;->a:J

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lo/kd;->c(JZ)V

    return-void
.end method
