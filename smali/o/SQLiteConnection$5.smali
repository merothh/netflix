.class Lo/SQLiteConnection$5;
.super Lo/AbstractWindowedCursor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SQLiteConnection;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AbstractWindowedCursor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/SQLiteConnection;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/SQLiteConnection;Ljava/lang/String;Z)V
    .locals 0

    .line 493
    iput-object p1, p0, Lo/SQLiteConnection$5;->d:Lo/SQLiteConnection;

    iput-object p2, p0, Lo/SQLiteConnection$5;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lo/SQLiteConnection$5;->e:Z

    invoke-direct {p0}, Lo/AbstractWindowedCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 517
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    .line 518
    invoke-interface {p1}, Lo/XmlResourceParser;->f()F

    move-result v1

    .line 519
    iget-object v2, p0, Lo/SQLiteConnection$5;->d:Lo/SQLiteConnection;

    iget-object v3, p0, Lo/SQLiteConnection$5;->b:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lo/SQLiteConnection;->b(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;FZ)V

    return-void
.end method

.method public e(Lo/XmlResourceParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 498
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v5

    .line 499
    invoke-interface {p1}, Lo/XmlResourceParser;->h()Z

    move-result v7

    .line 500
    invoke-interface {p1}, Lo/XmlResourceParser;->f()F

    move-result v4

    .line 501
    invoke-interface {p1}, Lo/XmlResourceParser;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 503
    iget-object v0, p0, Lo/SQLiteConnection$5;->d:Lo/SQLiteConnection;

    iget-object v1, p0, Lo/SQLiteConnection$5;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lo/SQLiteConnection$5;->e:Z

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lo/SQLiteConnection;->c(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Object;FZZZ)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 506
    iget-object v0, p0, Lo/SQLiteConnection$5;->d:Lo/SQLiteConnection;

    iget-object v1, p0, Lo/SQLiteConnection$5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lo/SQLiteConnection;->a(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Lo/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lo/SQLiteConnection$5;->d:Lo/SQLiteConnection;

    iget-object v1, p0, Lo/SQLiteConnection$5;->b:Ljava/lang/String;

    invoke-interface {p1}, Lo/XmlResourceParser;->j()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lo/SQLiteConnection;->a(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V

    return-void
.end method
