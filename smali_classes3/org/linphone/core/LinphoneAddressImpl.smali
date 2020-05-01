.class public Lorg/linphone/core/LinphoneAddressImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/core/LinphoneAddressImpl$WrapMode;
    }
.end annotation


# instance fields
.field protected final nativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .line 61
    sget-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {p0, p1, p2, v0}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-void
.end method

.method protected constructor <init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lorg/linphone/core/LinphoneAddressImpl$1;->$SwitchMap$org$linphone$core$LinphoneAddressImpl$WrapMode:[I

    invoke-virtual {p3}, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-wide/16 p1, 0x0

    .line 75
    iput-wide p1, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneAddressImpl;->ref(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneAddressImpl;->clone(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 66
    :cond_2
    iput-wide p1, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    :goto_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/linphone/core/LinphoneAddressImpl;->newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 49
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create LinphoneAdress from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, p3}, Lorg/linphone/core/LinphoneAddressImpl;->newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 56
    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setUserName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneAddressImpl;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method private native clone(J)J
.end method

.method private native getDisplayName(J)Ljava/lang/String;
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getPort(J)I
.end method

.method private native getTransport(J)I
.end method

.method private native getUserName(J)Ljava/lang/String;
.end method

.method private native newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native ref(J)J
.end method

.method private native setDisplayName(JLjava/lang/String;)V
.end method

.method private native setDomain(JLjava/lang/String;)V
.end method

.method private native setPort(JI)V
.end method

.method private native setTransport(JI)V
.end method

.method private native setUserName(JLjava/lang/String;)V
.end method

.method private native toString(J)Ljava/lang/String;
.end method

.method private native toUri(J)Ljava/lang/String;
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAddressImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asStringUriOnly()Ljava/lang/String;
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clean()V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 5

    .line 80
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->unref(J)V

    :cond_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getPort(J)I

    move-result v0

    return v0
.end method

.method public getTransport()Lorg/linphone/core/LinphoneAddress$TransportType;
    .locals 2

    .line 92
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getTransport(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAddress$TransportType;->fromInt(I)Lorg/linphone/core/LinphoneAddress$TransportType;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getUserName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setDisplayName(JLjava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setDomain(JLjava/lang/String;)V

    return-void
.end method

.method public setPort(I)V
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setPort(JI)V

    return-void
.end method

.method public setTransport(Lorg/linphone/core/LinphoneAddress$TransportType;)V
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneAddress$TransportType;->toInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setTransport(JI)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setUserName(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/lang/String;
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
