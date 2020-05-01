.class abstract Lo/Gc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hU;


# static fields
.field protected static e:Ljava/lang/String; = "nf_crypto_error_handler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c()Lo/zz;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/zz;->c(Ljava/lang/String;)V

    return-void
.end method

.method c(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 2

    .line 50
    new-instance v0, Lo/Gc$1;

    invoke-direct {v0, p0, p1}, Lo/Gc$1;-><init>(Lo/Gc;Landroid/content/Context;)V

    .line 57
    new-instance v1, Lo/Gc$2;

    invoke-direct {v1, p0, v0, p1}, Lo/Gc$2;-><init>(Lo/Gc;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-object v1
.end method

.method protected c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;
    .locals 3

    .line 105
    instance-of v0, p2, Landroid/media/ResourceBusyException;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "max_msl_drm_session_count"

    .line 106
    invoke-static {p1, v1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lo/Gc;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Gc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lo/Gc;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Gc;->a(Ljava/lang/String;)V

    .line 111
    :goto_0
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->e()Lo/hT;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lo/Gc;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo/Gc;->c(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, p2}, Lo/Gc;->e(Ljava/lang/Throwable;)I

    move-result p2

    .line 111
    invoke-interface {v0, p1, v1, v2, p2}, Lo/hT;->c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method abstract d()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
.end method

.method protected e(Ljava/lang/Throwable;)I
    .locals 3

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-virtual {p0}, Lo/Gc;->d()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    move-result-object v1

    invoke-virtual {p0}, Lo/Gc;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method abstract e()Lcom/netflix/mediaclient/StatusCode;
.end method
