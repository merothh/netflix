.class public abstract Lo/NotificationChannel;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field private d:Lo/NotificationManager;

.field private final e:[B

.field private final g:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, p1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    .line 52
    iput-object p2, p0, Lo/NotificationChannel;->g:Lcom/android/volley/Request$Priority;

    .line 53
    invoke-virtual {p0, v0}, Lo/NotificationChannel;->a(Z)V

    .line 54
    new-instance p1, Lo/ContentProviderHolder;

    const/16 p2, 0x2710

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1}, Lo/ContentProviderHolder;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lo/NotificationChannel;->d(Lo/FragmentController;)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 55
    iput-object p1, p0, Lo/NotificationChannel;->e:[B

    return-void
.end method

.method public static c(I)V
    .locals 0

    .line 167
    sput p0, Lo/NotificationChannel;->b:I

    return-void
.end method

.method private c(Lo/ExitTransitionCoordinator;)V
    .locals 1

    .line 129
    :try_start_0
    check-cast p1, Lo/NotificationChannelGroup;

    invoke-virtual {p1}, Lo/NotificationChannelGroup;->d()Lorg/apache/http/HttpEntity;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 134
    invoke-virtual {p0}, Lo/NotificationChannel;->I_()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Error occurred when calling consumingContent"

    .line 138
    invoke-static {v0, p1}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/NotificationChannel;->g:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/NotificationChannel;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected abstract b(J)V
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lo/NotificationChannel;->d:Lo/NotificationManager;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1}, Lo/NotificationManager;->c(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lo/NotificationChannel;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lo/NotificationChannel;->c(Lo/ExitTransitionCoordinator;)V

    .line 74
    move-object p1, v1

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1, v1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 79
    new-instance v0, Lcom/android/volley/VolleyError;

    const-string v1, "Network response is null"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object v0

    goto/16 :goto_2

    .line 80
    :cond_1
    instance-of v0, p1, Lo/NotificationChannelGroup;

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting ProgressiveNetworkResponse but got="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object v0

    goto/16 :goto_2

    .line 83
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/NotificationChannelGroup;

    invoke-virtual {v0}, Lo/NotificationChannelGroup;->d()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lo/NotificationChannel;->b(J)V

    const/4 v2, 0x0

    .line 89
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 91
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lo/NotificationChannel;->r()Z

    move-result v3

    if-nez v3, :cond_6

    .line 92
    iget-object v3, p0, Lo/NotificationChannel;->e:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 93
    iget-object v4, p0, Lo/NotificationChannel;->d:Lo/NotificationManager;

    if-eqz v4, :cond_4

    .line 95
    iget-object v5, p0, Lo/NotificationChannel;->e:[B

    invoke-interface {v4, v5, v3}, Lo/NotificationManager;->d([BI)V

    :cond_4
    if-gez v3, :cond_5

    goto :goto_1

    .line 98
    :cond_5
    sget v3, Lo/NotificationChannel;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v3, :cond_3

    .line 100
    :try_start_1
    sget v3, Lo/NotificationChannel;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    :try_start_2
    sput v2, Lo/NotificationChannel;->b:I

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_7
    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0, v1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseNetworkResponse I/O error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_download_prog_req"

    invoke-static {v2, v1}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v1, Lcom/android/volley/VolleyError;

    new-instance v2, Lcom/android/volley/NetworkError;

    invoke-direct {v2, v0}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object v0

    .line 115
    :goto_2
    invoke-virtual {p0}, Lo/NotificationChannel;->r()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 116
    iget-object v1, p0, Lo/NotificationChannel;->d:Lo/NotificationManager;

    if-eqz v1, :cond_8

    .line 118
    invoke-interface {v1}, Lo/NotificationManager;->a()V

    .line 121
    :cond_8
    invoke-direct {p0, p1}, Lo/NotificationChannel;->c(Lo/ExitTransitionCoordinator;)V

    return-object v0
.end method

.method protected e(Lo/NotificationManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/NotificationChannel;->d:Lo/NotificationManager;

    return-void
.end method
