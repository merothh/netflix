.class public final Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "HandshakeAccepted.java"


# static fields
.field private static final PROPERTY_accepted:Ljava/lang/String; = "accepted"

.field private static final PROPERTY_contractVersion:Ljava/lang/String; = "contractVersion"

.field private static final PROPERTY_volumeControl:Ljava/lang/String; = "volumeControl"

.field private static final PROPERTY_volumeStep:Ljava/lang/String; = "volumeStep"


# instance fields
.field private mAccepted:Z

.field private mContractVersion:I

.field private mVolumeControl:Z

.field private mVolumeStep:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "HANDSHAKE_ACCEPTED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v0, "contractVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mContractVersion:I

    const-string/jumbo v0, "accepted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mAccepted:Z

    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeControl:Z

    :cond_0
    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeStep:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getContractVersion()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mContractVersion:I

    return v0
.end method

.method public getVolumeStep()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeStep:I

    return v0
.end method

.method public isAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mAccepted:Z

    return v0
.end method

.method public isVolumeControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeControl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HandshakeAccepted [contractVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mContractVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mAccepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->mVolumeStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
