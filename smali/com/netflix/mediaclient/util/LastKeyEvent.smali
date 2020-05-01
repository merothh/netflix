.class public Lcom/netflix/mediaclient/util/LastKeyEvent;
.super Ljava/lang/Object;
.source "LastKeyEvent.java"


# static fields
.field public static final EXPIRED:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "nf_key"


# instance fields
.field private expirationTimeout:J

.field private lastKey:I

.field private ts:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 53
    iput-wide p1, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 54
    return-void
.end method


# virtual methods
.method public shouldIgnore(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->ts:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 67
    iget v4, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 68
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "nf_key"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore repeated key press "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms, which is less than threshold of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const-string/jumbo v4, "nf_key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Do NOT ignore repeated key press "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms, which is more than threshold of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 82
    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->ts:J

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method
