.class public Lo/xJ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJJJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/xJ;->a:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lo/xJ;->e:J

    .line 17
    iput-wide p4, p0, Lo/xJ;->b:J

    .line 18
    iput-wide p6, p0, Lo/xJ;->c:J

    .line 19
    iput-wide p8, p0, Lo/xJ;->d:J

    .line 20
    iput-wide p10, p0, Lo/xJ;->h:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 27
    iget-wide v0, p0, Lo/xJ;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/xJ;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/xJ;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/xJ;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/xJ;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
