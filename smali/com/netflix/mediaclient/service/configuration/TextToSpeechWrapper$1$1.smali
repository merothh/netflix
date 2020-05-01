.class Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;
.super Ljava/lang/Object;
.source "TextToSpeechWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$100(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$200(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$202(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;Z)Z

    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccessibilityStateChanged: mSpokenAccessibilityEnabled change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;->this$0:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->access$200(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method
