.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 705
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const-string/jumbo v0, "WPMomentScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeoutRunnable: counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->OUTRO:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 716
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$508(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$900(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
