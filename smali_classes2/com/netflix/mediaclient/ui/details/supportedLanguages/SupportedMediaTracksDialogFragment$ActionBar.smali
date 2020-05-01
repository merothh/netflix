.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/EW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/EW;)V
    .locals 3

    .line 140
    instance-of v0, p1, Lo/EW$StateListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 141
    check-cast p1, Lo/EW$StateListAnimator;

    invoke-virtual {p1}, Lo/EW$StateListAnimator;->c()Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    sget-object v2, Lo/EX;->b:[I

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 153
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    .line 154
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Z)V

    goto :goto_2

    .line 160
    :cond_2
    instance-of v0, p1, Lo/EW$TaskDescription;

    if-eqz v0, :cond_4

    .line 161
    check-cast p1, Lo/EW$TaskDescription;

    invoke-virtual {p1}, Lo/EW$TaskDescription;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V

    .line 166
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Z)V

    goto :goto_2

    .line 168
    :cond_4
    sget-object v0, Lo/EW$Application;->a:Lo/EW$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->e:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->c(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lo/EW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$ActionBar;->a(Lo/EW;)V

    return-void
.end method
