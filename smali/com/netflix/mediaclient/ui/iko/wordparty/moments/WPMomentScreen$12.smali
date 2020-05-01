.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$audioList:Ljava/util/List;

.field final synthetic val$counter:I

.field final synthetic val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    iput p3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$size:I

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$audioList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1351
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    const-string/jumbo v0, "WPMomentScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playVOList: onComplete url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    .line 1353
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nextState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$size:I

    if-ge v0, v1, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$audioList:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 1360
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0
.end method
