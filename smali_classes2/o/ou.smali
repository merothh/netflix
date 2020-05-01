.class Lo/ou;
.super Lo/NotificationChannel;
.source ""

# interfaces
.implements Lo/NotificationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ou$Activity;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lo/os;

.field private final e:Ljava/io/File;

.field private f:Lo/ou$Activity;

.field private g:Ljava/io/BufferedOutputStream;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Lcom/android/volley/Request$Priority;Lo/ou$Activity;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p4}, Lo/NotificationChannel;-><init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V

    .line 42
    new-instance p4, Lo/os;

    invoke-direct {p4}, Lo/os;-><init>()V

    iput-object p4, p0, Lo/ou;->d:Lo/os;

    .line 53
    iput-object p1, p0, Lo/ou;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lo/ou;->e:Ljava/io/File;

    .line 55
    iget-object p1, p0, Lo/ou;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ou;->i:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lo/ou;->f:Lo/ou$Activity;

    .line 57
    invoke-virtual {p0, p0}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bytes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/ou;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ou;->h:Ljava/lang/String;

    .line 62
    sget-object p1, Lo/ou$2;->b:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->G:Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {p0, p1}, Lo/ou;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->H:Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {p0, p1}, Lo/ou;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->F:Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {p0, p1}, Lo/ou;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->z:Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {p0, p1}, Lo/ou;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 198
    iget-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lo/ou$Activity;->c()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p0}, Lo/ou$Activity;->d(Lo/ou;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 4

    .line 211
    iget-object v0, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 214
    iget-object v0, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_httpUrlDownloader"

    const-string v3, "flushAndCloseOutputStream:"

    .line 216
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    :cond_0
    return-void
.end method

.method private S()V
    .locals 1

    .line 234
    iget-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lo/ou$Activity;->h()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    :cond_0
    return-void
.end method

.method private a(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1}, Lo/ou$Activity;->c(Lcom/android/volley/VolleyError;)V

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lo/ou;->f:Lo/ou$Activity;

    :cond_0
    return-void
.end method


# virtual methods
.method public M()J
    .locals 4

    .line 254
    iget-object v0, p0, Lo/ou;->d:Lo/os;

    iget-wide v0, v0, Lo/os;->a:J

    iget-object v2, p0, Lo/ou;->d:Lo/os;

    iget-wide v2, v2, Lo/os;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a()V
    .locals 2

    const-string v0, "nf_httpUrlDownloader"

    const-string v1, "onCancelled"

    .line 192
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 194
    invoke-direct {p0}, Lo/ou;->N()V

    return-void
.end method

.method protected b(J)V
    .locals 4

    .line 102
    iget-object v0, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lo/ou;->e:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    invoke-direct {p0}, Lo/ou;->S()V

    return-void

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/ou;->d:Lo/os;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/os;->d:J

    .line 117
    iget-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0, p1, p2}, Lo/ou$Activity;->b(J)V

    :cond_1
    return-void
.end method

.method public b(Lo/FragmentHostCallback;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lo/ou;->d:Lo/os;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/os;->b:J

    .line 80
    iget-object v0, p0, Lo/ou;->d:Lo/os;

    iget-object v1, p0, Lo/ou;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lo/os;->a:J

    .line 84
    invoke-virtual {p1, p0}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public c(Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 184
    iget-object v0, p0, Lo/ou;->d:Lo/os;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/os;->c:J

    .line 185
    invoke-direct {p0}, Lo/ou;->N()V

    .line 187
    invoke-direct {p0, p1}, Lo/ou;->a(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public d([BI)V
    .locals 7

    const-string v0, "nf_httpUrlDownloader"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    :try_start_0
    iget-object v3, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    if-nez v3, :cond_0

    const-string p1, "onNext mBufferedOutputStream null. not writing"

    .line 132
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lo/ou;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "cancelled, closing file and returning"

    .line 136
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v2}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 138
    invoke-direct {p0}, Lo/ou;->N()V

    return-void

    :cond_1
    if-lez p2, :cond_2

    .line 142
    iget-object v3, p0, Lo/ou;->g:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 143
    iget-object p1, p0, Lo/ou;->d:Lo/os;

    iget-wide v3, p1, Lo/os;->e:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p1, Lo/os;->e:J

    .line 144
    invoke-direct {p0}, Lo/ou;->K()V

    goto :goto_0

    :cond_2
    if-gez p2, :cond_3

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNext done count="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v2}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 148
    invoke-direct {p0}, Lo/ou;->N()V

    .line 149
    iget-object p1, p0, Lo/ou;->d:Lo/os;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lo/os;->g:J

    .line 153
    invoke-direct {p0}, Lo/ou;->J()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "onNext write to disk failed"

    .line 168
    invoke-static {v0, p1, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0, v2}, Lo/ou;->e(Lo/NotificationManager;)V

    .line 170
    invoke-direct {p0}, Lo/ou;->S()V

    .line 171
    invoke-super {p0}, Lo/NotificationChannel;->l()V

    :cond_3
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lo/ou;->f:Lo/ou$Activity;

    .line 248
    invoke-super {p0}, Lo/NotificationChannel;->l()V

    return-void
.end method

.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    iget-object v1, p0, Lo/ou;->h:Ljava/lang/String;

    const-string v2, "Range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
