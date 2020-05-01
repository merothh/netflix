.class Lo/w;
.super Lorg/chromium/net/UrlRequest$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/w$ActionBar;,
        Lo/w$StateListAnimator;
    }
.end annotation


# static fields
.field private static final d:Lo/w$ActionBar;


# instance fields
.field private a:Lo/w$ActionBar$StateListAnimator;

.field private final b:Lo/w$StateListAnimator;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lo/w$ActionBar;

    const/4 v1, 0x3

    const/16 v2, 0x2000

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lo/w$ActionBar;-><init>(III)V

    sput-object v0, Lo/w;->d:Lo/w$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/w$StateListAnimator;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/w;->c:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lo/w;->e:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lo/w;->b:Lo/w$StateListAnimator;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lo/w;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "nf_network"

    const-string v0, "--> %s"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private static final b(Lorg/chromium/net/UrlResponseInfo;Ljava/util/List;)Lo/ExitTransitionCoordinator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/UrlResponseInfo;",
            "Ljava/util/List<",
            "[B>;)",
            "Lo/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 284
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_2

    .line 287
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 288
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v1, 0xa00000

    if-le v3, v1, :cond_2

    .line 291
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "excessive network response size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 293
    :cond_2
    new-array v1, v3, [B

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 295
    array-length v5, v4

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 299
    :goto_2
    new-instance v1, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 300
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Set-Cookie"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 305
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 309
    :cond_5
    new-instance p0, Lo/ExitTransitionCoordinator;

    invoke-direct {p0, v0, p1, v1, v2}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 205
    iget-object v0, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lo/w;->d:Lo/w$ActionBar;

    invoke-virtual {v1, v0}, Lo/w$ActionBar;->b(Lo/w$ActionBar$StateListAnimator;)V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lo/w;->d()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 198
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "nf_network"

    const-string v0, "!!! %s CANCELED"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iget-object p1, p0, Lo/w;->b:Lo/w$StateListAnimator;

    new-instance p2, Ljava/io/IOException;

    const-string v0, "request canceled"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lo/w$StateListAnimator;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Lo/w;->d()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 191
    iget-object p2, p0, Lo/w;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    if-nez p3, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/chromium/net/CronetException;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "nf_network"

    const-string v0, "!!! %s %s"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    iget-object p1, p0, Lo/w;->b:Lo/w$StateListAnimator;

    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lo/w$StateListAnimator;->b(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 156
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    new-array p2, p2, [B

    .line 157
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {v0, p3, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object p3, p0, Lo/w;->c:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p2, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    iget-object p2, p2, Lo/w$ActionBar$StateListAnimator;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 160
    iget-object p2, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    iget-object p2, p2, Lo/w$ActionBar$StateListAnimator;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lo/w;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "nf_network"

    const-string v0, "--- %s -> %s"

    invoke-static {p3, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 129
    sget-object p2, Lo/w;->d:Lo/w$ActionBar;

    invoke-virtual {p2}, Lo/w$ActionBar;->b()Lo/w$ActionBar$StateListAnimator;

    move-result-object p2

    iput-object p2, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    .line 130
    iget-object p2, p0, Lo/w;->a:Lo/w$ActionBar$StateListAnimator;

    iget-object p2, p2, Lo/w$ActionBar$StateListAnimator;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lo/w;->d()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "nf_network"

    const-string v1, "<-- %s %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    iget-object p1, p0, Lo/w;->c:Ljava/util/List;

    invoke-static {p2, p1}, Lo/w;->b(Lorg/chromium/net/UrlResponseInfo;Ljava/util/List;)Lo/ExitTransitionCoordinator;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lo/w;->b:Lo/w$StateListAnimator;

    invoke-interface {p2, p1}, Lo/w$StateListAnimator;->e(Lo/ExitTransitionCoordinator;)V

    return-void
.end method
