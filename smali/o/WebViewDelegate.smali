.class public final Lo/WebViewDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/WebViewClient$Application;",
        ">",
        "Ljava/lang/Object;",
        "Lo/WebViewClient<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/WebViewClient$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lo/WebViewClient$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lo/WebViewClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;Z",
            "Lo/WebViewClient<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebViewDelegate;->c:Lo/WebViewClient$Application;

    iput-object p2, p0, Lo/WebViewDelegate;->a:Lo/WebViewClient$Application;

    iput-boolean p3, p0, Lo/WebViewDelegate;->d:Z

    iput-object p4, p0, Lo/WebViewDelegate;->e:Lo/WebViewClient;

    return-void
.end method


# virtual methods
.method public a()Lo/WebViewClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-boolean v0, p0, Lo/WebViewDelegate;->d:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/WebViewClient;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/WebViewDelegate;->e:Lo/WebViewClient;

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/WebViewDelegate;->d:Z

    return v0
.end method

.method public c()Lo/WebViewClient$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/WebViewDelegate;->a:Lo/WebViewClient$Application;

    return-object v0
.end method

.method public e()Lo/WebViewClient$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/WebViewDelegate;->c:Lo/WebViewClient$Application;

    return-object v0
.end method

.method public e(I)Z
    .locals 3

    .line 18
    invoke-virtual {p0}, Lo/WebViewDelegate;->e()Lo/WebViewClient$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lo/WebViewDelegate;->c()Lo/WebViewClient$Application;

    move-result-object v1

    invoke-interface {v1}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;-><init>(I)V

    check-cast v2, Lo/alN;

    .line 17
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateTransitionImpl(fromState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/WebViewDelegate;->e()Lo/WebViewClient$Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "toState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Lo/WebViewDelegate;->c()Lo/WebViewClient$Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WebViewDelegate;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebViewDelegate;->e:Lo/WebViewClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
