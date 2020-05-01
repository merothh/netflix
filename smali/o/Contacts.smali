.class public final Lo/Contacts;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IntentReceiverLeakedViolation;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lo/Contacts;->c:I

    .line 18
    iput v0, p0, Lo/Contacts;->d:I

    .line 19
    iput v0, p0, Lo/Contacts;->a:I

    .line 35
    iput v0, p0, Lo/Contacts;->e:I

    .line 36
    iput v0, p0, Lo/Contacts;->b:I

    .line 37
    iput v0, p0, Lo/Contacts;->i:I

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lo/Contacts;->g:J

    return-void
.end method

.method private h()J
    .locals 4

    .line 58
    iget-wide v0, p0, Lo/Contacts;->g:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Contacts;->f:J

    return-void
.end method

.method public b()V
    .locals 1

    .line 26
    iget v0, p0, Lo/Contacts;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Contacts;->d:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 50
    iget v0, p0, Lo/Contacts;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Contacts;->i:I

    return-void
.end method

.method public d()V
    .locals 1

    .line 22
    iget v0, p0, Lo/Contacts;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Contacts;->c:I

    return-void
.end method

.method public e()V
    .locals 1

    .line 30
    iget v0, p0, Lo/Contacts;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Contacts;->a:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    iget p1, p0, Lo/Contacts;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Contacts;->e:I

    goto :goto_0

    .line 44
    :cond_0
    iget p1, p0, Lo/Contacts;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Contacts;->b:I

    :goto_0
    return-void
.end method

.method public f()Lorg/json/JSONObject;
    .locals 6

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "memCacheFound"

    .line 76
    iget v2, p0, Lo/Contacts;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "memCacheMissed"

    .line 77
    iget v2, p0, Lo/Contacts;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "memCacheExpired"

    .line 78
    iget v2, p0, Lo/Contacts;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "diskCacheFound"

    .line 79
    iget v2, p0, Lo/Contacts;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "diskCacheMissed"

    .line 80
    iget v2, p0, Lo/Contacts;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "diskCacheExpired"

    .line 81
    iget v2, p0, Lo/Contacts;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    iget-wide v1, p0, Lo/Contacts;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "diskCacheTimeSpent_\u00b5s"

    .line 83
    invoke-direct {p0}, Lo/Contacts;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public g()V
    .locals 4

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/Contacts;->f:J

    sub-long/2addr v0, v2

    .line 69
    iget-wide v2, p0, Lo/Contacts;->g:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/Contacts;->g:J

    return-void
.end method
