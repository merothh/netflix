.class Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;
.super Ljava/lang/Object;
.source "TextToSpeechWrapper.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccessibilityStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$300(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;-><init>(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
