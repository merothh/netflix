.class Lo/xy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xy;


# direct methods
.method constructor <init>(Lo/xy;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lo/xy$2;->c:Lo/xy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 550
    iget-object v0, p0, Lo/xy$2;->c:Lo/xy;

    invoke-static {v0}, Lo/xy;->b(Lo/xy;)Z

    move-result v0

    return v0
.end method

.method public c(Lo/og;)V
    .locals 4

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/xy$2;->c:Lo/xy;

    iget-wide v1, v1, Lo/xy;->H:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "PlaylistPlaybackSession"

    const-string v3, "partialDownloadProgressWatcher %s"

    .line 556
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 557
    iget-object v1, p0, Lo/xy$2;->c:Lo/xy;

    invoke-static {v1}, Lo/xy;->b(Lo/xy;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lo/og;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lo/xy$2;->c:Lo/xy;

    invoke-static {v0, p1}, Lo/xy;->c(Lo/xy;Lo/og;)V

    :cond_0
    return-void
.end method
