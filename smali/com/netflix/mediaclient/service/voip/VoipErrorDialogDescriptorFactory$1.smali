.class final Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;
.super Ljava/lang/Object;
.source "VoipErrorDialogDescriptorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Start Contact us activity!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntentWithAutoDial(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->contactUs:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
