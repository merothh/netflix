.class public final Lo/Gd;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Ljava/lang/String; = "nf_crypto_error"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)Lo/hU;
    .locals 2

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    if-ne p0, v0, :cond_0

    .line 35
    invoke-static {p1}, Lo/Gd;->d(Lcom/netflix/mediaclient/StatusCode;)Lo/hU;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->c:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string v1, "Playback error sources not supported at this moment!"

    if-ne p0, v0, :cond_2

    .line 39
    invoke-static {p1}, Lo/Gu;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    new-instance p0, Lo/Gu;

    invoke-direct {p0, p1}, Lo/Gu;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->b:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    if-ne p0, v0, :cond_4

    .line 47
    invoke-static {p1}, Lo/Gz;->a(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 48
    new-instance p0, Lo/Gz;

    invoke-direct {p0, p1}, Lo/Gz;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lcom/netflix/mediaclient/StatusCode;)Lo/hU;
    .locals 1

    .line 61
    invoke-static {p0}, Lo/Gr;->c(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lo/Gr;

    invoke-direct {v0, p0}, Lo/Gr;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object v0

    .line 65
    :cond_0
    invoke-static {p0}, Lo/Gt;->c(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance p0, Lo/Gt;

    invoke-direct {p0}, Lo/Gt;-><init>()V

    return-object p0

    .line 69
    :cond_1
    invoke-static {p0}, Lo/Gp;->b(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance p0, Lo/Gp;

    invoke-direct {p0}, Lo/Gp;-><init>()V

    return-object p0

    .line 73
    :cond_2
    invoke-static {p0}, Lo/Gs;->c(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance p0, Lo/Gs;

    invoke-direct {p0}, Lo/Gs;-><init>()V

    return-object p0

    .line 77
    :cond_3
    invoke-static {p0}, Lo/Gq;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance p0, Lo/Gq;

    invoke-direct {p0}, Lo/Gq;-><init>()V

    return-object p0

    .line 80
    :cond_4
    invoke-static {p0}, Lo/Gi;->c(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    new-instance p0, Lo/Gi;

    invoke-direct {p0}, Lo/Gi;-><init>()V

    return-object p0

    .line 82
    :cond_5
    invoke-static {p0}, Lo/GB;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    new-instance p0, Lo/GB;

    invoke-direct {p0}, Lo/GB;-><init>()V

    return-object p0

    .line 84
    :cond_6
    invoke-static {p0}, Lo/GD;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    new-instance p0, Lo/GD;

    invoke-direct {p0}, Lo/GD;-><init>()V

    return-object p0

    .line 86
    :cond_7
    invoke-static {p0}, Lo/Go;->c(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    new-instance p0, Lo/Go;

    invoke-direct {p0}, Lo/Go;-><init>()V

    return-object p0

    .line 88
    :cond_8
    invoke-static {p0}, Lo/Gn;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    new-instance p0, Lo/Gn;

    invoke-direct {p0}, Lo/Gn;-><init>()V

    return-object p0

    .line 90
    :cond_9
    invoke-static {p0}, Lo/Gm;->d(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 91
    new-instance p0, Lo/Gm;

    invoke-direct {p0}, Lo/Gm;-><init>()V

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method
