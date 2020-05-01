.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->addItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->e:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->access$getSelectedSubtitleTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->b:Ljava/lang/String;

    .line 70
    :goto_0
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->access$setSelectedSubtitleTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->access$getSelectedSubtitleTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance v0, Lo/EW$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/EW$TaskDescription;-><init>(Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance v0, Lo/EW$StateListAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->e:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    invoke-direct {v0, v1}, Lo/EW$StateListAnimator;-><init>(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->requestModelBuild()V

    return-void
.end method
