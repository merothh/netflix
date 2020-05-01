.class public Lorg/linphone/core/LinphoneXmlRpcRequestImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneXmlRpcRequest;


# instance fields
.field protected nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/linphone/core/LinphoneXmlRpcRequest$ArgType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p2}, Lorg/linphone/core/LinphoneXmlRpcRequest$ArgType;->value()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->newLinphoneXmlRpcRequest(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    return-void
.end method

.method private native addIntArg(JI)V
.end method

.method private native addStringArg(JLjava/lang/String;)V
.end method

.method private native getContent(J)Ljava/lang/String;
.end method

.method private native getIntResponse(J)I
.end method

.method private native getStatus(J)I
.end method

.method private native getStringResponse(J)Ljava/lang/String;
.end method

.method private native newLinphoneXmlRpcRequest(Ljava/lang/String;I)J
.end method

.method private native setListener(JLorg/linphone/core/LinphoneXmlRpcRequest$LinphoneXmlRpcRequestListener;)V
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public addIntArg(I)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->addIntArg(JI)V

    return-void
.end method

.method public addStringArg(Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->addStringArg(JLjava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->unref(J)V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->getContent(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntResponse()I
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->getIntResponse(J)I

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    return-wide v0
.end method

.method public getStatus()Lorg/linphone/core/LinphoneXmlRpcRequest$Status;
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->getStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneXmlRpcRequest$Status;->fromInt(I)Lorg/linphone/core/LinphoneXmlRpcRequest$Status;

    move-result-object v0

    return-object v0
.end method

.method public getStringResponse()Ljava/lang/String;
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->getStringResponse(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lorg/linphone/core/LinphoneXmlRpcRequest$LinphoneXmlRpcRequestListener;)V
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->setListener(JLorg/linphone/core/LinphoneXmlRpcRequest$LinphoneXmlRpcRequestListener;)V

    return-void
.end method
