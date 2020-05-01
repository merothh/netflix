.class public Lo/yd;
.super Lo/KeyguardManager;
.source ""


# instance fields
.field private final a:Lo/H;


# direct methods
.method public constructor <init>(Lo/H;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/KeyguardManager;-><init>()V

    .line 17
    iput-object p1, p0, Lo/yd;->a:Lo/H;

    return-void
.end method


# virtual methods
.method protected b(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/yd;->a:Lo/H;

    invoke-interface {v0, p1}, Lo/H;->e(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1, p2}, Lo/KeyguardManager;->e(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->c(Ljava/net/HttpURLConnection;)V

    .line 29
    instance-of v0, p1, Lo/Y;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p1

    check-cast v0, Lo/Y;

    invoke-virtual {p2}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lo/Y;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
