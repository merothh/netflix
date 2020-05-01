.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
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
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->d:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
            "Lo/EW;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-eqz v0, :cond_0

    .line 97
    new-instance v12, Lo/KeymasterLongArgument;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->c:Ljava/lang/String;

    const-string v1, "requireTopLevelVideoId"

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfe

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lo/KeymasterLongArgument;-><init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;ILo/amc;)V

    check-cast v12, Lo/SettingsValidators;

    .line 98
    new-instance v1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;Lio/reactivex/ObservableEmitter;)V

    check-cast v1, Lo/ci;

    .line 96
    invoke-interface {v0, v12, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->d:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    .line 119
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 120
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
