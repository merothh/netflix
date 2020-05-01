.class public Lo/kw;
.super Lfi/iki/elonen/NanoHTTPD;
.source ""


# static fields
.field public static c:I = 0x2378


# instance fields
.field private b:Lo/lf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/lf;)V
    .locals 1

    .line 20
    sget v0, Lo/kw;->c:I

    invoke-direct {p0, v0}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 22
    iput-object p1, p0, Lo/kw;->b:Lo/lf;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 27
    invoke-super {p0}, Lfi/iki/elonen/NanoHTTPD;->a()V

    .line 28
    invoke-virtual {p0}, Lo/kw;->b()I

    move-result v0

    sput v0, Lo/kw;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    sget v1, Lo/kw;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MdxHTTPD"

    const-string v2, "MDX Web server started on port: %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public b(Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 8

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->c()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    .line 38
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->a:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v1}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Error: %s"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "text/plain"

    const-string v7, "MdxHTTPD"

    if-nez v2, :cond_0

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->d:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v1}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-array p1, v5, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "PostData: %s"

    invoke-static {v7, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, "postData"

    .line 52
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-static {v7, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1}, Lo/ky;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "MDXGUARD: INVALID MDX MESSAGE"

    aput-object v0, p1, v4

    .line 58
    invoke-static {v7, v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->a:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6, v0}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 62
    :cond_2
    iget-object v0, p0, Lo/kw;->b:Lo/lf;

    invoke-virtual {v0, p1}, Lo/lf;->e(Ljava/lang/String;)V

    .line 63
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->e:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "status=ok"

    invoke-static {p1, v6, v0}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 66
    :cond_3
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->a:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "POST BODY MISSING"

    invoke-static {p1, v6, v0}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-array v0, v5, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->b()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-array v0, v5, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->D:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
