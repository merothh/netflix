.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public languageChanged(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 3

    .prologue
    .line 953
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Language changed via dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->saveUserChoice(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 958
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->changeLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 959
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    .line 962
    return-void
.end method

.method public updateDialog(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "Updating dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    .line 968
    return-void
.end method

.method public userCanceled()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "User canceled selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public wasPlaying()Z
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    return v0
.end method
