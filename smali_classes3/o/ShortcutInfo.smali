.class public Lo/ShortcutInfo;
.super Ljava/io/FilterOutputStream;
.source ""


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lo/ShortcutInfo;->a:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lo/ShortcutInfo;->a:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ShortcutInfo;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4

    .line 59
    iget-object v0, p0, Lo/ShortcutInfo;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 60
    iget-wide v0, p0, Lo/ShortcutInfo;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ShortcutInfo;->a:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/ShortcutInfo;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    iget-wide p1, p0, Lo/ShortcutInfo;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lo/ShortcutInfo;->a:J

    return-void
.end method
