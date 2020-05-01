.class public Lo/ns;
.super Lo/KeyguardManager;
.source ""


# instance fields
.field private final a:Lo/H;

.field protected c:Landroid/content/Context;

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/H;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0, p3}, Lo/ns;-><init>(Landroid/content/Context;Lo/H;Lo/KeyguardManager$TaskDescription;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/H;Lo/KeyguardManager$TaskDescription;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 63
    invoke-direct/range {v0 .. v5}, Lo/ns;-><init>(Landroid/content/Context;Lo/H;Lo/KeyguardManager$TaskDescription;Ljavax/net/ssl/SSLSocketFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/H;Lo/KeyguardManager$TaskDescription;Ljavax/net/ssl/SSLSocketFactory;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p3, p4}, Lo/KeyguardManager;-><init>(Lo/KeyguardManager$TaskDescription;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 76
    iput-object p2, p0, Lo/ns;->a:Lo/H;

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lo/ns;->c:Landroid/content/Context;

    .line 82
    iput p5, p0, Lo/ns;->e:I

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "If context is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([B)Lorg/apache/http/HttpEntity;
    .locals 1

    .line 136
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string p0, "identity"

    .line 137
    invoke-virtual {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    const-string p0, "text/plain"

    .line 138
    invoke-virtual {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/ns;->a:Lo/H;

    invoke-interface {v0, p1}, Lo/H;->e(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lo/np;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/np<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .line 98
    invoke-virtual {p1, p2}, Lo/np;->b(Ljava/util/Map;)[B

    move-result-object p1

    .line 101
    new-instance p2, Lorg/apache/http/ProtocolVersion;

    const/4 v0, 0x1

    const-string v1, "HTTP"

    invoke-direct {p2, v1, v0, v0}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 102
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 103
    new-instance p2, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 105
    invoke-static {p1}, Lo/ns;->a([B)Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object p2
.end method

.method protected e(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2}, Lo/KeyguardManager;->e(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->c(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public e(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .line 88
    instance-of v0, p1, Lo/np;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lo/np;

    invoke-virtual {p0, p1, p2}, Lo/ns;->b(Lo/np;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lo/KeyguardManager;->e(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
