.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "timer update exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;I)V

    goto :goto_0
.end method
