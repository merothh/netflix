.class final Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nP;

.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;Lo/nP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;->b:Lo/nP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 55
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1, p2}, Lo/aeN;->a(Z)V

    .line 56
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 57
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->downloadedForYouSetup:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 58
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 60
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->access$setOptedIn$p(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;Z)V

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->requestModelBuild()V

    return-void
.end method
