.class public Lorg/linphone/core/ErrorInfoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/ErrorInfo;


# instance fields
.field protected mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->ref(J)V

    .line 30
    iput-wide p1, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->ref(J)V

    .line 25
    :cond_0
    iput-wide p1, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    return-void
.end method

.method private native getPhrase(J)Ljava/lang/String;
.end method

.method private native getProtocol(J)Ljava/lang/String;
.end method

.method private native getProtocolCode(J)I
.end method

.method private native getReason(J)I
.end method

.method private native getSubErrorInfo(J)J
.end method

.method private native getWarnings(J)Ljava/lang/String;
.end method

.method private native ref(J)V
.end method

.method private native setPhrase(JLjava/lang/String;)V
.end method

.method private native setProtocol(JLjava/lang/String;)V
.end method

.method private native setProtocolCode(JI)V
.end method

.method private native setReason(JI)V
.end method

.method private native setSubErrorInfo(JJ)V
.end method

.method private native setWarnings(JLjava/lang/String;)V
.end method

.method private native unref(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 5

    .line 102
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 103
    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->unref(J)V

    .line 104
    iput-wide v2, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    :cond_0
    return-void
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/linphone/core/ErrorInfoImpl;->getWarnings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhrase()Ljava/lang/String;
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getPhrase(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getProtocol(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolCode()I
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getProtocolCode(J)I

    move-result v0

    return v0
.end method

.method public getReason()Lorg/linphone/core/Reason;
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getReason(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

    move-result-object v0

    return-object v0
.end method

.method public getSubErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 5

    .line 60
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getSubErrorInfo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 61
    new-instance v2, Lorg/linphone/core/ErrorInfoImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(JZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getWarnings()Ljava/lang/String;
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/ErrorInfoImpl;->getWarnings(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPhrase(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/ErrorInfoImpl;->setPhrase(JLjava/lang/String;)V

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/ErrorInfoImpl;->setProtocol(JLjava/lang/String;)V

    return-void
.end method

.method public setProtocolCode(I)V
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/ErrorInfoImpl;->setProtocolCode(JI)V

    return-void
.end method

.method public setReason(Lorg/linphone/core/Reason;)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    iget p1, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/ErrorInfoImpl;->setReason(JI)V

    return-void
.end method

.method public setSubErrorInfo(Lorg/linphone/core/ErrorInfo;)V
    .locals 4

    .line 92
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    if-eqz p1, :cond_0

    check-cast p1, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p1, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;->setSubErrorInfo(JJ)V

    return-void
.end method

.method public setWarnings(Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/ErrorInfoImpl;->setWarnings(JLjava/lang/String;)V

    return-void
.end method
