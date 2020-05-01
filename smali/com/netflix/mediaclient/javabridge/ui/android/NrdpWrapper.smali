.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;
.super Ljava/lang/Object;
.source "NrdpWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# instance fields
.field private deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

.field private logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

.field private mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

.field private mediaImpl:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

.field private networkDiagnosticTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

.field private nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

.field private regImpl:Lcom/netflix/mediaclient/javabridge/ui/Registration;

.field private storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/NrdProxy;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "nrdp"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 44
    const-string/jumbo v0, "nrdp.media"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mediaImpl:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    .line 45
    const-string/jumbo v0, "nrdp.storage"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Storage;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    .line 46
    const-string/jumbo v0, "nrdp.log"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Log;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    .line 47
    const-string/jumbo v0, "nrdp.registration"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->regImpl:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    .line 48
    const-string/jumbo v0, "nrdp.device"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Device;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    .line 49
    const-string/jumbo v0, "nrdp.mdx"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 50
    const-string/jumbo v0, "nrdp.network"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->networkDiagnosticTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    .line 51
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 100
    return-void
.end method

.method public debug()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->debug()Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->exit()V

    .line 58
    return-void
.end method

.method public getConfigList()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getConfigList()V

    .line 86
    return-void
.end method

.method public getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    return-object v0
.end method

.method public getDiagnosisTool()Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->networkDiagnosticTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    return-object v0
.end method

.method public getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    return-object v0
.end method

.method public getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method public getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mediaImpl:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    return-object v0
.end method

.method public getRegistration()Lcom/netflix/mediaclient/javabridge/ui/Registration;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->regImpl:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    return-object v0
.end method

.method public getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    return v0
.end method

.method public now()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 107
    return-void
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
