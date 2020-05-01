.class public Lo/WifiDisplayStatus;
.super Lo/ArrayUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WifiDisplayStatus$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ArrayUtils<",
        "Lo/WifiDisplayStatus$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/ObbScanner;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/WifiDisplayStatus;-><init>(Lo/ObbScanner;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/WifiDisplayStatus;-><init>(Lo/ObbScanner;)V

    .line 72
    iput p1, p0, Lo/WifiDisplayStatus;->e:I

    return-void
.end method

.method constructor <init>(Lo/ObbScanner;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lo/ArrayUtils;-><init>()V

    const/4 v0, 0x3

    .line 77
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/WifiDisplayStatus;->d:Ljava/util/concurrent/ExecutorService;

    .line 78
    iput-object p1, p0, Lo/WifiDisplayStatus;->a:Lo/ObbScanner;

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 170
    invoke-static {p0}, Lo/ResourcesKey;->e(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private e(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;
    .locals 7

    .line 138
    invoke-static {p1}, Lo/WifiDisplayStatus;->e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 139
    iget v1, p0, Lo/WifiDisplayStatus;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 142
    invoke-static {v1}, Lo/WifiDisplayStatus;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 145
    :cond_0
    invoke-static {v1}, Lo/WifiDisplayStatus;->e(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    const-string v2, "Location"

    .line 146
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_2

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sub-int/2addr p2, v5

    .line 153
    invoke-direct {p0, v0, p2}, Lo/WifiDisplayStatus;->e(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    new-array p2, v5, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "URL %s follows too many redirects"

    invoke-static {p1, p2}, Lo/WifiDisplayStatus;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    const-string p1, "URL %s returned %d without a valid redirect"

    invoke-static {p1, p2}, Lo/WifiDisplayStatus;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 162
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    new-instance p2, Ljava/io/IOException;

    new-array v0, v3, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "Image URL %s returned HTTP code %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static e(I)Z
    .locals 1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_0

    const/16 v0, 0x134

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/WifiDisplayStatus$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")",
            "Lo/WifiDisplayStatus$Application;"
        }
    .end annotation

    .line 84
    new-instance v0, Lo/WifiDisplayStatus$Application;

    invoke-direct {v0, p1, p2}, Lo/WifiDisplayStatus$Application;-><init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-object v0
.end method

.method public synthetic a(Lo/DisplayManagerGlobal;I)V
    .locals 0

    .line 33
    check-cast p1, Lo/WifiDisplayStatus$Application;

    invoke-virtual {p0, p1, p2}, Lo/WifiDisplayStatus;->e(Lo/WifiDisplayStatus$Application;I)V

    return-void
.end method

.method public a(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/WifiDisplayStatus;->a:Lo/ObbScanner;

    invoke-interface {v0}, Lo/ObbScanner;->now()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo/WifiDisplayStatus$Application;->e(Lo/WifiDisplayStatus$Application;J)J

    .line 90
    iget-object v0, p0, Lo/WifiDisplayStatus;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/WifiDisplayStatus$3;

    invoke-direct {v1, p0, p1, p2}, Lo/WifiDisplayStatus$3;-><init>(Lo/WifiDisplayStatus;Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lo/WifiDisplayStatus$Application;->a()Lo/HdmiTimerRecordSources;

    move-result-object p1

    new-instance v1, Lo/WifiDisplayStatus$4;

    invoke-direct {v1, p0, v0, p2}, Lo/WifiDisplayStatus$4;-><init>(Lo/WifiDisplayStatus;Ljava/util/concurrent/Future;Lo/HdmiRecordListener$StateListAnimator;)V

    invoke-interface {p1, v1}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method public bridge synthetic b(Lo/DisplayManagerGlobal;I)Ljava/util/Map;
    .locals 0

    .line 33
    check-cast p1, Lo/WifiDisplayStatus$Application;

    invoke-virtual {p0, p1, p2}, Lo/WifiDisplayStatus;->b(Lo/WifiDisplayStatus$Application;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/WifiDisplayStatus$Application;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WifiDisplayStatus$Application;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->c(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v1

    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->b(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->e(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v1

    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->c(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->e(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v1

    invoke-static {p1}, Lo/WifiDisplayStatus$Application;->b(Lo/WifiDisplayStatus$Application;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "total_time"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/DisplayManagerGlobal;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lo/WifiDisplayStatus;->a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/WifiDisplayStatus$Application;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lo/DisplayManagerGlobal;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 0

    .line 33
    check-cast p1, Lo/WifiDisplayStatus$Application;

    invoke-virtual {p0, p1, p2}, Lo/WifiDisplayStatus;->a(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V

    return-void
.end method

.method public e(Lo/WifiDisplayStatus$Application;I)V
    .locals 2

    .line 176
    iget-object p2, p0, Lo/WifiDisplayStatus;->a:Lo/ObbScanner;

    invoke-interface {p2}, Lo/ObbScanner;->now()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo/WifiDisplayStatus$Application;->c(Lo/WifiDisplayStatus$Application;J)J

    return-void
.end method

.method e(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 4

    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lo/WifiDisplayStatus$Application;->c()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lo/WifiDisplayStatus;->e(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v2, p0, Lo/WifiDisplayStatus;->a:Lo/ObbScanner;

    invoke-interface {v2}, Lo/ObbScanner;->now()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lo/WifiDisplayStatus$Application;->b(Lo/WifiDisplayStatus$Application;J)J

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 p1, -0x1

    .line 118
    invoke-interface {p2, v0, p1}, Lo/HdmiRecordListener$StateListAnimator;->b(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    .line 125
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 121
    :goto_1
    :try_start_3
    invoke-interface {p2, p1}, Lo/HdmiRecordListener$StateListAnimator;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    nop

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 131
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v0, :cond_4

    .line 125
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p1
.end method
