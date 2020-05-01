.class public final Lo/WebView$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebViewDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebView;-><init>(Ljava/lang/String;Ljava/util/List;Lo/WebViewClient$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WebViewDatabase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Lo/WebViewClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lo/WebView;


# direct methods
.method constructor <init>(Lo/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/WebViewClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewClient<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "transition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 69
    iget-object v0, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-static {v0}, Lo/WebView;->d(Lo/WebView;)Lo/WebViewClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-static {v0}, Lo/WebView;->d(Lo/WebView;)Lo/WebViewClient;

    move-result-object v0

    iget-object v2, p0, Lo/WebView$StateListAnimator;->b:Lo/WebViewClient;

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 71
    iget-object v0, p0, Lo/WebView$StateListAnimator;->b:Lo/WebViewClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/WebViewClient;->a()Lo/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    const/4 v3, 0x2

    invoke-static {v2, v0, v1, v3, v1}, Lo/WebView;->e(Lo/WebView;Lo/WebViewClient;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-interface {p1}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/WebView;->d(Lo/WebViewClient$Application;)V

    .line 75
    iget-object p1, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    move-object v0, v1

    check-cast v0, Lo/WebViewClient;

    invoke-static {p1, v0}, Lo/WebView;->e(Lo/WebView;Lo/WebViewClient;)V

    .line 77
    :cond_1
    check-cast v1, Lo/WebViewClient;

    iput-object v1, p0, Lo/WebView$StateListAnimator;->b:Lo/WebViewClient;

    return-void
.end method

.method public e(Lo/WebViewClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewClient<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "transition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 61
    iget-object v0, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-static {v0}, Lo/WebView;->d(Lo/WebView;)Lo/WebViewClient;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iput-object p1, p0, Lo/WebView$StateListAnimator;->b:Lo/WebViewClient;

    .line 63
    iget-object v0, p0, Lo/WebView$StateListAnimator;->c:Lo/WebView;

    invoke-interface {p1}, Lo/WebViewClient;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lo/WebView;->d(I)V

    :cond_1
    return-void
.end method
