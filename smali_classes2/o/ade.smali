.class public Lo/ade;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ade;->a:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo/ade;->a:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;Landroid/content/DialogInterface;I)V

    return-void
.end method
