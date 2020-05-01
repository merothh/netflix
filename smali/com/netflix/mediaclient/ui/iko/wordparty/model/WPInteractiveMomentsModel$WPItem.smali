.class public Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsModel.java"


# instance fields
.field private name:Ljava/lang/String;

.field private states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardClosedImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardOpenImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardOpenVideoMask()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$4100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$4100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardVideo()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$4200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$4200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecapAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    goto :goto_0
.end method
