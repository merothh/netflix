.class public Lo/StaleDataException;
.super Lo/RequestHandlerThread;
.source ""


# instance fields
.field private final d:Lo/SQLiteAccessPermException;

.field private final e:Lo/ObbScanner;


# direct methods
.method public constructor <init>(Lo/ObbScanner;Lo/SQLiteAccessPermException;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/RequestHandlerThread;-><init>()V

    .line 20
    iput-object p1, p0, Lo/StaleDataException;->e:Lo/ObbScanner;

    .line 21
    iput-object p2, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 47
    iget-object p3, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    iget-object v0, p0, Lo/StaleDataException;->e:Lo/ObbScanner;

    invoke-interface {v0}, Lo/ObbScanner;->now()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lo/SQLiteAccessPermException;->f(J)V

    .line 49
    iget-object p3, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p3, p1}, Lo/SQLiteAccessPermException;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 50
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->e(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p4}, Lo/SQLiteAccessPermException;->a(Z)V

    return-void
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 27
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    iget-object v1, p0, Lo/StaleDataException;->e:Lo/ObbScanner;

    invoke-interface {v1}, Lo/ObbScanner;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/SQLiteAccessPermException;->h(J)V

    .line 29
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1}, Lo/SQLiteAccessPermException;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 30
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->b(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p3}, Lo/SQLiteAccessPermException;->e(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p4}, Lo/SQLiteAccessPermException;->a(Z)V

    return-void
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3

    .line 37
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    iget-object v1, p0, Lo/StaleDataException;->e:Lo/ObbScanner;

    invoke-interface {v1}, Lo/ObbScanner;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/SQLiteAccessPermException;->f(J)V

    .line 39
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1}, Lo/SQLiteAccessPermException;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 40
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->e(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p3}, Lo/SQLiteAccessPermException;->a(Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    iget-object v1, p0, Lo/StaleDataException;->e:Lo/ObbScanner;

    invoke-interface {v1}, Lo/ObbScanner;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/SQLiteAccessPermException;->f(J)V

    .line 58
    iget-object v0, p0, Lo/StaleDataException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0, p1}, Lo/SQLiteAccessPermException;->e(Ljava/lang/String;)V

    return-void
.end method
