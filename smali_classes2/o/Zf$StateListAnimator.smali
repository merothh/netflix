.class final Lo/Zf$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;
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
.field final synthetic a:Lo/Am;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Lo/BC;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lo/Zf$StateListAnimator;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/Zf$StateListAnimator;->a:Lo/Am;

    iput-object p3, p0, Lo/Zf$StateListAnimator;->d:Lo/BC;

    iput-object p4, p0, Lo/Zf$StateListAnimator;->c:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Zf$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 158
    new-instance v0, Lo/Zf$StateListAnimator$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/Zf$StateListAnimator$ActionBar;-><init>(Lo/Zf$StateListAnimator;Lio/reactivex/ObservableEmitter;)V

    .line 202
    iget-object p1, p0, Lo/Zf$StateListAnimator;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 203
    check-cast v0, Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 202
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lo/Zf$StateListAnimator;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lo/Zf$StateListAnimator;->a:Lo/Am;

    iget-object v0, p0, Lo/Zf$StateListAnimator;->d:Lo/BC;

    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/Zf$StateListAnimator;->c:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lo/Am;->e(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
