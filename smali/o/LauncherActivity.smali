.class public Lo/LauncherActivity;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 124
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ";"

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 128
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 129
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 131
    aget-object v4, v3, v0

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    aget-object p0, v3, v1

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    array-length v2, p0

    if-lt v2, v1, :cond_2

    aget-object p0, p0, v0

    const-string v2, "application/json"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const-string p0, "UTF-8"

    goto :goto_1

    :cond_3
    const-string p0, "ISO-8859-1"

    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    .line 112
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;
    .locals 13

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v3, "Date"

    .line 55
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    .line 57
    invoke-static {v3}, Lo/LauncherActivity;->b(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-string v3, "Cache-Control"

    .line 60
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    const-string v9, ","

    .line 63
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-wide v9, v4

    .line 64
    :goto_1
    array-length v11, v3

    if-ge v8, v11, :cond_6

    .line 65
    aget-object v11, v3, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no-cache"

    .line 66
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "no-store"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_3

    :cond_1
    const-string v12, "max-age="

    .line 68
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x8

    .line 70
    :try_start_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const-string v12, "must-revalidate"

    .line 73
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "proxy-revalidate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    move-wide v9, v4

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    move-wide v9, v4

    :goto_4
    const-string v3, "Expires"

    .line 79
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 81
    invoke-static {v3}, Lo/LauncherActivity;->b(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_5

    :cond_8
    move-wide v11, v4

    :goto_5
    const-string v3, "ETag"

    .line 84
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v8, :cond_9

    const-wide/16 v4, 0x3e8

    mul-long v9, v9, v4

    add-long v4, v0, v9

    goto :goto_6

    :cond_9
    cmp-long v8, v6, v4

    if-lez v8, :cond_a

    cmp-long v8, v11, v6

    if-ltz v8, :cond_a

    sub-long/2addr v11, v6

    add-long v4, v0, v11

    .line 95
    :cond_a
    :goto_6
    new-instance v0, Lo/ContextImpl$StateListAnimator;

    invoke-direct {v0}, Lo/ContextImpl$StateListAnimator;-><init>()V

    .line 96
    iget-object p0, p0, Lo/ExitTransitionCoordinator;->c:[B

    iput-object p0, v0, Lo/ContextImpl$StateListAnimator;->a:[B

    .line 97
    iput-object v3, v0, Lo/ContextImpl$StateListAnimator;->e:Ljava/lang/String;

    .line 98
    iput-wide v4, v0, Lo/ContextImpl$StateListAnimator;->c:J

    .line 99
    iget-wide v3, v0, Lo/ContextImpl$StateListAnimator;->c:J

    iput-wide v3, v0, Lo/ContextImpl$StateListAnimator;->d:J

    .line 100
    iput-wide v6, v0, Lo/ContextImpl$StateListAnimator;->b:J

    .line 101
    iput-object v2, v0, Lo/ContextImpl$StateListAnimator;->f:Ljava/util/Map;

    return-object v0
.end method
