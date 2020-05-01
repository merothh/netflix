.class public final Lo/cB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ds;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lo/bE;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/cB;->e:Ljava/lang/String;

    .line 38
    invoke-static {}, Lo/bE;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/cB;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/cB;->j:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lo/cB;->f:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lo/cB;->f:Ljava/lang/String;

    invoke-static {p1}, Lo/cB;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    :goto_0
    iput-object p1, p0, Lo/cB;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 64
    iget-object p1, p0, Lo/cB;->f:Ljava/lang/String;

    sget-object p2, Lo/cB;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 69
    invoke-direct {p0}, Lo/cB;->g()V

    .line 70
    iget-object p1, p0, Lo/cB;->d:Ljava/lang/String;

    sget-object p2, Lo/cB;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 71
    iget-object p2, p0, Lo/cB;->d:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cB;->c:Ljava/lang/String;

    .line 72
    invoke-static {}, Lo/dj;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cB;->g:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lo/cB;->j:Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/cB;->e(Landroid/content/Context;)V

    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid ESN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Landroid/content/Context;)Lo/cB;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "nf_drm_esn"

    .line 174
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 182
    :cond_0
    :try_start_0
    new-instance v2, Lo/cB;

    invoke-direct {v2, p0, v1}, Lo/cB;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ESN"

    const-string v3, "Failed to create cached ESN provider!"

    .line 184
    invoke-static {v2, p0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-static {}, Lo/dj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {p1}, Lo/dj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    sget-object v2, Lo/cB;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lo/cB;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cB;->h:Ljava/lang/String;

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "L3-"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private g()V
    .locals 6

    .line 77
    iget-object v0, p0, Lo/cB;->f:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 79
    sget-object v2, Lo/cB;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    const-string v4, "ESN"

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 94
    iget-object v3, p0, Lo/cB;->f:Ljava/lang/String;

    aput-object v3, v0, v5

    const-string v3, "unexpected esn %s"

    invoke-static {v4, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 97
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/cB;->f:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/cB;->d:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lo/cB;->d:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "Cached ESN prefix: %s"

    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/cB;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/cB;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/cB;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/cB;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/cB;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/cB;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/cB;->c:Ljava/lang/String;

    return-object v0
.end method
