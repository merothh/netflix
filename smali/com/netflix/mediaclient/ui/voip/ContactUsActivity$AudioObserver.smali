.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;
.super Landroid/database/ContentObserver;
.source "ContactUsActivity.java"


# instance fields
.field context:Landroid/content/Context;

.field previousVolume:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$400(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    sub-int/2addr v3, v1

    if-lez v3, :cond_3

    const-string/jumbo v3, "VoipActivity"

    const-string/jumbo v4, "Decreased"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Max volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VoipActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New volume as new/max: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$500(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$500(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setOutputVolume(F)V

    :cond_2
    return-void

    :cond_3
    if-gez v3, :cond_0

    const-string/jumbo v3, "VoipActivity"

    const-string/jumbo v4, "Increased"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    goto :goto_0
.end method
