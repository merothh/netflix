.class public abstract Lcom/netflix/mediaclient/android/app/BaseStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/app/Status;


# instance fields
.field private a:Ljava/lang/String;

.field protected c:Ljava/lang/Throwable;

.field public d:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "com.netflix.msl"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AndroidMslClient"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "500 internal server error"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "nf_baseStatus"

    const-string v2, "fromStatusCode status=%s"

    .line 131
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->c:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 134
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->b:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 136
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->e:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 138
    :cond_2
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 140
    :cond_3
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 141
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->g:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/Throwable;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_baseStatus"

    const-string v2, "fromException status=%s"

    .line 116
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/netflix/mediaclient/android/app/BaseStatus;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/chromium/net/CronetException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/netflix/mediaclient/android/app/BaseStatus;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    instance-of v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/netflix/mediaclient/android/app/BaseStatus;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    instance-of p0, p0, Landroid/media/MediaDrmException;

    if-eqz p0, :cond_3

    .line 124
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->b:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 126
    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/android/app/BaseStatus;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object p0

    return-object p0

    .line 122
    :cond_4
    :goto_0
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->e:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 120
    :cond_5
    :goto_1
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0

    .line 118
    :cond_6
    :goto_2
    sget-object p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->c:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "org.chromium.net.impl.NetworkExceptionImpl"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.netflix.mediaclient.service.msl.client.MslUrlHttpURLConnectionImpl"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->d()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->c()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public e(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->a:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 94
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->a:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->c:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract h()Lcom/netflix/cl/model/Error;
.end method

.method public i()Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->a:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/android/app/BaseStatus;->c(Ljava/lang/Throwable;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->b(I)Z

    move-result v0

    return v0
.end method
