.class public Lorg/linphone/tools/Lpc2Xml;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/tools/Lpc2Xml$LogLevel;
    }
.end annotation


# static fields
.field private static mAvailable:Z


# instance fields
.field private internalPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "xml2"

    .line 61
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lorg/linphone/tools/Lpc2Xml;->internalPtr:J

    .line 23
    invoke-direct {p0}, Lorg/linphone/tools/Lpc2Xml;->init()V

    return-void
.end method

.method private native destroy()V
.end method

.method private native init()V
.end method

.method static isAvailable()Z
    .locals 1

    .line 55
    sget-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z

    return v0
.end method


# virtual methods
.method public native convertFile(Ljava/lang/String;)I
.end method

.method public native convertString(Ljava/lang/StringBuffer;)I
.end method

.method public finalize()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/linphone/tools/Lpc2Xml;->destroy()V

    return-void
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 3

    if-lez p1, :cond_4

    .line 36
    invoke-static {}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->values()[Lorg/linphone/tools/Lpc2Xml$LogLevel;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 37
    sget-object v0, Lorg/linphone/tools/Lpc2Xml$1;->$SwitchMap$org$linphone$tools$Lpc2Xml$LogLevel:[I

    invoke-static {}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->values()[Lorg/linphone/tools/Lpc2Xml$LogLevel;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 48
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 45
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 42
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 39
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public native setLpc(Lorg/linphone/core/LpConfig;)I
.end method
