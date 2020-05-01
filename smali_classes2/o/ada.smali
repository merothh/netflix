.class public Lo/ada;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ada;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ada;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;Landroid/view/View;)V

    return-void
.end method
