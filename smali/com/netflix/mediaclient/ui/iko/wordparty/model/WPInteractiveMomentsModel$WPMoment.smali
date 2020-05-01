.class public Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsModel.java"


# instance fields
.field private interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

.field private notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;->access$2300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundColor()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPColor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;->access$1700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPColor;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;->access$2400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPBackground;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$2500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPForeground;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;->access$2500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPTheme;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPForeground;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPForeground;->access$2600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPForeground;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstructionAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntroductionAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$2800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$2800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItems;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItems;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItems;->access$4000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItems;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMomentExpectedVideoOffset()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;->access$400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getMomentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ikoMomentId"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;->access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPassiveExitAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositiveLineAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugDefaultAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugDefaultImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugEndTimeMS()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugNotificationExpectedVideoOffset()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;->access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getPugNotificationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ikoNotificationId"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugSelectedAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugSelectedImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;->access$2200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;->access$2100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemState;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugStartTimeMS()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getPugType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecapAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;->access$3700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecapItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;->access$3800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPRecapState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSceneInitialState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSceneTriggerEndMS()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getSceneTriggerStartMS()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getSceneType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1000(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSummaryAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3500(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeout2AudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeoutAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$2700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;->access$3100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentStates;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoReturnOffsetMS()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->interactiveScene:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;->access$1400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPScene;)I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public isPugAutoOptIn()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->notification:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->access$900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
