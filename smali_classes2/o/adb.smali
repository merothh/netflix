.class public Lo/adb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/adb;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/adb;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V

    return-void
.end method
