.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
