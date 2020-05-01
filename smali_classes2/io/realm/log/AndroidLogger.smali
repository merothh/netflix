.class public Lio/realm/log/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lio/realm/log/Logger;


# instance fields
.field private volatile logTag:Ljava/lang/String;

.field private final minimumLogLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "REALM"

    iput-object v0, p0, Lio/realm/log/AndroidLogger;->logTag:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown android log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput p1, p0, Lio/realm/log/AndroidLogger;->minimumLogLevel:I

    .line 56
    return-void
.end method

.method private varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 84
    iget v0, p0, Lio/realm/log/AndroidLogger;->minimumLogLevel:I

    if-ge p1, v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-nez p3, :cond_3

    .line 88
    if-eqz p2, :cond_0

    .line 91
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-ge v1, v2, :cond_4

    .line 103
    iget-object v1, p0, Lio/realm/log/AndroidLogger;->logTag:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_3
    if-eqz p4, :cond_7

    array-length v0, p4

    if-lez v0, :cond_7

    .line 94
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    move-object v0, p3

    .line 96
    :goto_2
    if-eqz p2, :cond_2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_0

    .line 110
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 111
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 113
    :goto_4
    add-int/lit16 v4, v3, 0xfa0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 114
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v5, p0, Lio/realm/log/AndroidLogger;->logTag:Ljava/lang/String;

    invoke-static {p1, v5, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 117
    if-lt v4, v1, :cond_6

    .line 109
    add-int/lit8 v3, v4, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    .line 111
    goto :goto_4

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move-object v0, p3

    goto :goto_2
.end method


# virtual methods
.method public varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public varargs fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public getMinimumNativeDebugLevel()I
    .locals 3

    .prologue
    .line 70
    iget v0, p0, Lio/realm/log/AndroidLogger;->minimumLogLevel:I

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/log/AndroidLogger;->minimumLogLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    const/4 v0, 0x2

    .line 76
    :goto_0
    return v0

    .line 72
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 74
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 75
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 76
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public varargs trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lio/realm/log/AndroidLogger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method
