.class public Lo/tz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tz$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/tz;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field public final b:J

.field private c:Z

.field public final d:Z

.field private final e:Lo/tz$Activity;


# direct methods
.method public constructor <init>(Lo/tz$Activity;JZZ)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/tz;->c:Z

    .line 22
    iput-object p1, p0, Lo/tz;->e:Lo/tz$Activity;

    .line 23
    iput-wide p2, p0, Lo/tz;->b:J

    .line 24
    iput-boolean p4, p0, Lo/tz;->d:Z

    .line 25
    iput-boolean p5, p0, Lo/tz;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lo/tz;)I
    .locals 4

    .line 55
    iget-wide v0, p0, Lo/tz;->b:J

    iget-wide v2, p1, Lo/tz;->b:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6

    .line 42
    iget-boolean v0, p0, Lo/tz;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lo/tz;->b:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 43
    iget-boolean v0, p0, Lo/tz;->a:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lo/tz;->e:Lo/tz$Activity;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/tz$Activity;->d(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lo/tz;->c:Z

    return p1

    :cond_1
    return v1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lo/tz;

    invoke-virtual {p0, p1}, Lo/tz;->a(Lo/tz;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/tz;->c:Z

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lo/tz;->c:Z

    return-void
.end method
