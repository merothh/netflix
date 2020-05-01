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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "nrdp"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    const-string/jumbo v0, "nrdp.media"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mediaImpl:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const-string/jumbo v0, "nrdp.storage"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Storage;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    const-string/jumbo v0, "nrdp.log"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Log;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    const-string/jumbo v0, "nrdp.registration"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->regImpl:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v0, "nrdp.device"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Device;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    const-string/jumbo v0, "nrdp.mdx"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    const-string/jumbo v0, "nrdp.network"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->networkDiagnosticTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method public debug()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->debug()Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->exit()V

    return-void
.end method

.method public getConfigList()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getConfigList()V

    return-void
.end method

.method public getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    return-object v0
.end method

.method public getDiagnosisTool()Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->networkDiagnosticTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    return-object v0
.end method

.method public getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    return-object v0
.end method

.method public getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method public getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mediaImpl:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    return-object v0
.end method

.method public getRegistration()Lcom/netflix/mediaclient/javabridge/ui/Registration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->regImpl:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    return-object v0
.end method

.method public getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    return v0
.end method

.method public now()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
