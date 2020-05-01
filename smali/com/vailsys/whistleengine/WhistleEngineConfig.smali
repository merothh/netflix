.class public Lcom/vailsys/whistleengine/WhistleEngineConfig;
.super Ljava/lang/Object;
.source "WhistleEngineConfig.java"


# static fields
.field public static final SAMPLERATE_16K:I = 0x3e80

.field public static final SAMPLERATE_24K:I = 0x5dc0

.field public static final SAMPLERATE_32K:I = 0x7d00

.field public static final SAMPLERATE_48K:I = 0xbb80

.field public static final SAMPLERATE_8K:I = 0x1f40


# instance fields
.field private account:Ljava/lang/String;

.field private applicationIdentifier:Ljava/lang/String;

.field private certificateAuthorityFile:Ljava/lang/String;

.field private certificateChain:Ljava/lang/String;

.field private connectivityThresholds:Lcom/vailsys/whistleengine/WhistleEngineThresholds;

.field private echoCanceler:Z

.field private password:Ljava/lang/String;

.field private privateKey:Ljava/lang/String;

.field private proxy:Ljava/lang/String;

.field private registrationEnabled:Z

.field private rootCertificate:Ljava/lang/String;

.field private sampleRate:I

.field private tlsPort:I

.field private transport:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->proxy:Ljava/lang/String;

    iput-object p2, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->account:Ljava/lang/String;

    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->UDP:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->transport:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    iput-boolean v1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->registrationEnabled:Z

    iput-boolean v1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->echoCanceler:Z

    const/16 v0, 0x13c5

    iput v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->tlsPort:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->sampleRate:I

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->applicationIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateAuthorityFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->certificateAuthorityFile:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateChain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->certificateChain:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->connectivityThresholds:Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    return-object v0
.end method

.method public getEchoCanceler()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->echoCanceler:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->registrationEnabled:Z

    return v0
.end method

.method public getRootCertificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->rootCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->sampleRate:I

    return v0
.end method

.method public getTLSPort()I
    .locals 1

    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->tlsPort:I

    return v0
.end method

.method public getTransportMode()Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->transport:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    return-object v0
.end method

.method public setApplicationIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->applicationIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setCertificateAuthorityFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->certificateAuthorityFile:Ljava/lang/String;

    return-void
.end method

.method public setCertificateChain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->certificateChain:Ljava/lang/String;

    return-void
.end method

.method public setConnectivityThresholds(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->connectivityThresholds:Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    return-void
.end method

.method public setEchoCanceler(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->echoCanceler:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->password:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->privateKey:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->registrationEnabled:Z

    return-void
.end method

.method public setRootCertificate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->rootCertificate:Ljava/lang/String;

    return-void
.end method

.method public setSamplerate(I)V
    .locals 0

    iput p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->sampleRate:I

    return-void
.end method

.method public setTLSPort(I)V
    .locals 0

    iput p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->tlsPort:I

    return-void
.end method

.method public setTransportMode(Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineConfig;->transport:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    return-void
.end method
