.class public Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Lcom/netflix/mediaclient/StatusCode;

.field e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;JLjava/lang/Throwable;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 75
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->d:Lcom/netflix/mediaclient/StatusCode;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a:J

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->b:J

    .line 78
    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c:J

    .line 79
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->f:Lorg/json/JSONObject;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ts"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a:J

    const-string v0, "up"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->b:J

    const-string v0, "appStartupTime"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c:J

    const-string v0, "src"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string v0, "cause"

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->d:Lcom/netflix/mediaclient/StatusCode;

    const-string v0, "originalCause"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->f:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 3

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "stacktrace"

    .line 87
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "MESSAGE"

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a:J

    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c:J

    const-string v3, "appStartupTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->b:J

    const-string v3, "up"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "originalCause"

    .line 116
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method c(J)Z
    .locals 3

    .line 131
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e()Z
    .locals 5

    .line 162
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FatalCryptoError{appStartupTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", howLongDeviceWasUpInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
