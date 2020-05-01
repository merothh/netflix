.class public Lo/SQLiteAbortException;
.super Lo/SQLiteBlobTooBigException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SQLiteBlobTooBigException<",
        "Lo/LegacyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/DatabaseObjectNotClosedException;

.field private final d:Lo/ObbScanner;

.field private final e:Lo/SQLiteAccessPermException;


# direct methods
.method public constructor <init>(Lo/ObbScanner;Lo/SQLiteAccessPermException;Lo/DatabaseObjectNotClosedException;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/SQLiteBlobTooBigException;-><init>()V

    .line 28
    iput-object p1, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    .line 29
    iput-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    .line 30
    iput-object p3, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    return-void
.end method

.method private c(J)V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SQLiteAccessPermException;->d(Z)V

    .line 110
    iget-object v0, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1, p2}, Lo/SQLiteAccessPermException;->i(J)V

    .line 112
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lo/DatabaseObjectNotClosedException;->e(Lo/SQLiteAccessPermException;I)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/LegacyRequest;

    invoke-virtual {p0, p1, p2}, Lo/SQLiteAbortException;->c(Ljava/lang/String;Lo/LegacyRequest;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    invoke-interface {v0}, Lo/ObbScanner;->now()J

    move-result-wide v0

    .line 37
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2, v0, v1}, Lo/SQLiteAccessPermException;->a(J)V

    .line 38
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2, p1}, Lo/SQLiteAccessPermException;->c(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->b(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    .line 42
    invoke-virtual {p0, v0, v1}, Lo/SQLiteAbortException;->d(J)V

    return-void
.end method

.method public synthetic c(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 20
    check-cast p2, Lo/LegacyRequest;

    invoke-virtual {p0, p1, p2, p3}, Lo/SQLiteAbortException;->e(Ljava/lang/String;Lo/LegacyRequest;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 71
    iget-object p2, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    invoke-interface {p2}, Lo/ObbScanner;->now()J

    move-result-wide v0

    .line 73
    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p2, v0, v1}, Lo/SQLiteAccessPermException;->e(J)V

    .line 74
    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p2, p1}, Lo/SQLiteAccessPermException;->c(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    .line 78
    invoke-direct {p0, v0, v1}, Lo/SQLiteAbortException;->c(J)V

    return-void
.end method

.method public c(Ljava/lang/String;Lo/LegacyRequest;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    invoke-interface {v0}, Lo/ObbScanner;->now()J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2, v0, v1}, Lo/SQLiteAccessPermException;->b(J)V

    .line 50
    iget-object v0, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1}, Lo/SQLiteAccessPermException;->c(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->d(Lo/LegacyRequest;)V

    .line 53
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    return-void
.end method

.method public d(J)V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/SQLiteAccessPermException;->d(Z)V

    .line 101
    iget-object v0, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1, p2}, Lo/SQLiteAccessPermException;->g(J)V

    .line 103
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2, v1}, Lo/DatabaseObjectNotClosedException;->e(Lo/SQLiteAccessPermException;I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Lo/SQLiteBlobTooBigException;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    invoke-interface {v0}, Lo/ObbScanner;->now()J

    move-result-wide v0

    .line 86
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2}, Lo/SQLiteAccessPermException;->d()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2, v0, v1}, Lo/SQLiteAccessPermException;->c(J)V

    .line 90
    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {v2, p1}, Lo/SQLiteAccessPermException;->c(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object v2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    .line 95
    :cond_0
    invoke-direct {p0, v0, v1}, Lo/SQLiteAbortException;->c(J)V

    return-void
.end method

.method public e(Ljava/lang/String;Lo/LegacyRequest;Landroid/graphics/drawable/Animatable;)V
    .locals 2

    .line 59
    iget-object p3, p0, Lo/SQLiteAbortException;->d:Lo/ObbScanner;

    invoke-interface {p3}, Lo/ObbScanner;->now()J

    move-result-wide v0

    .line 61
    iget-object p3, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p3, v0, v1}, Lo/SQLiteAccessPermException;->d(J)V

    .line 62
    iget-object p3, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p3, v0, v1}, Lo/SQLiteAccessPermException;->f(J)V

    .line 63
    iget-object p3, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p3, p1}, Lo/SQLiteAccessPermException;->c(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->d(Lo/LegacyRequest;)V

    .line 66
    iget-object p1, p0, Lo/SQLiteAbortException;->b:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLiteAbortException;->e:Lo/SQLiteAccessPermException;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    return-void
.end method
