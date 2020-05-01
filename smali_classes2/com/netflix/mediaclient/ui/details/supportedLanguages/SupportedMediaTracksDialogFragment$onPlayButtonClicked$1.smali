.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lo/zY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lo/zY;)V
    .locals 4

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playSessionSelector"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->a(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 224
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getId()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_3
    new-instance v3, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1$1;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1$1;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;Z)V

    check-cast v3, Lo/alN;

    .line 220
    invoke-interface {p2, p1, v2, v1, v3}, Lo/zY;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/alN;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lo/zY;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$onPlayButtonClicked$1;->b(Ljava/lang/String;Lo/zY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
