.class public interface abstract Lorg/linphone/core/LinphoneXmlRpcRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/core/LinphoneXmlRpcRequest$Status;,
        Lorg/linphone/core/LinphoneXmlRpcRequest$ArgType;,
        Lorg/linphone/core/LinphoneXmlRpcRequest$LinphoneXmlRpcRequestListener;
    }
.end annotation


# virtual methods
.method public abstract addIntArg(I)V
.end method

.method public abstract addStringArg(Ljava/lang/String;)V
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getIntResponse()I
.end method

.method public abstract getStatus()Lorg/linphone/core/LinphoneXmlRpcRequest$Status;
.end method

.method public abstract getStringResponse()Ljava/lang/String;
.end method

.method public abstract setListener(Lorg/linphone/core/LinphoneXmlRpcRequest$LinphoneXmlRpcRequestListener;)V
.end method
