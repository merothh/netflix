.class public final Lo/Zf$StateListAnimator$ActionBar;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zf$StateListAnimator;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Zf$StateListAnimator;

.field final synthetic e:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lo/Zf$StateListAnimator;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->c:Lo/Zf$StateListAnimator;

    iput-object p2, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3b5e4b4e

    const-string v2, "emitter"

    if-eq v0, v1, :cond_1

    const p2, 0x5fba53e8    # 2.685266E19f

    if-eq v0, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    sget-object p1, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 164
    iget-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->c:Lo/Zf$StateListAnimator;

    iget-object p1, p1, Lo/Zf$StateListAnimator;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    .line 165
    move-object p2, p0

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 167
    iget-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/Zf$TaskDescription;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v1, v2}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    const-string v0, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    .line 173
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 172
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    const-string v0, "StatusCode.getStatusCode\u2026                        )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, v0, :cond_2

    .line 180
    iget-object v0, p0, Lo/Zf$StateListAnimator$ActionBar;->c:Lo/Zf$StateListAnimator;

    iget-object v0, v0, Lo/Zf$StateListAnimator;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    .line 181
    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const-string p1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    .line 183
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 186
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    .line 187
    iget-object p2, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_2

    .line 188
    iget-object p2, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    .line 189
    new-instance v1, Lo/Zf$TaskDescription;

    .line 191
    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    .line 189
    invoke-direct {v1, p1, v0}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 188
    invoke-interface {p2, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lo/Zf$StateListAnimator$ActionBar;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_2
    :goto_0
    return-void
.end method
