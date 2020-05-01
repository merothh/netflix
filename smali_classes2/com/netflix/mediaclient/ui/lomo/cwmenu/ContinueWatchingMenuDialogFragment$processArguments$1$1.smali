.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

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
            "Lo/Lz;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-nez v0, :cond_0

    .line 67
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    goto :goto_0

    .line 71
    :cond_0
    new-instance v12, Lo/KeymasterLongArgument;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->b:Ljava/lang/String;

    const-string v1, "requireVideoId"

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

    .line 72
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;Lio/reactivex/ObservableEmitter;)V

    check-cast v1, Lo/ci;

    .line 70
    invoke-interface {v0, v12, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :goto_0
    return-void
.end method
