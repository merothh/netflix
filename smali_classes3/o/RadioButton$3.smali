.class public final Lo/RadioButton$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo/RadioButton;


# direct methods
.method constructor <init>(Lo/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 224
    iget-object v0, p0, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-virtual {v0}, Lo/RadioButton;->d()Z

    move-result v0

    const-string v1, "RxView.clicks(this).map(AnyToUnit)"

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v0}, Lo/RadioButton;->d(Lo/RadioButton;)Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 517
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v1, Lo/RadioButton$3$1;

    invoke-direct {v1, p0}, Lo/RadioButton$3$1;-><init>(Lo/RadioButton$3;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 232
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 233
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "button.clicks()\n        \u2026dSchedulers.mainThread())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 234
    new-instance v0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/SeekButton$9$2;-><init>(Lo/RadioButton$3;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lo/RadioButton$3;->b:Lo/RadioButton;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lo/RadioButton;->e(Lo/RadioButton;I)V

    .line 242
    iget-object v0, p0, Lo/RadioButton$3;->b:Lo/RadioButton;

    invoke-static {v0}, Lo/RadioButton;->d(Lo/RadioButton;)Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 518
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/SeekButton$9$3;-><init>(Lo/RadioButton$3;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method
