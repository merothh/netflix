.class public final Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DropBoxManager;-><init>(Lo/DeadSystemException;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Build;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/DeadSystemException;

.field final synthetic b:Lo/DropBoxManager;


# direct methods
.method public constructor <init>(Lo/DropBoxManager;Lo/DeadSystemException;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Build;)V
    .locals 10

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lo/Build$TaskStackBuilder;

    if-eqz v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->h()V

    goto/16 :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lo/Build$SharedElementCallback;

    if-eqz v0, :cond_1

    .line 38
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->h_()V

    .line 39
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->g_()V

    .line 40
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->g()V

    .line 41
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {p1}, Lo/DropBoxManager;->e(Lo/DropBoxManager;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto/16 :goto_0

    .line 44
    :cond_1
    instance-of v0, p1, Lo/Build$ContentResolver;

    if-eqz v0, :cond_2

    .line 45
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->g()V

    .line 46
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {p1}, Lo/DropBoxManager;->e(Lo/DropBoxManager;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto/16 :goto_0

    .line 49
    :cond_2
    instance-of v0, p1, Lo/Build$Theme;

    if-eqz v0, :cond_3

    .line 50
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->c()V

    goto/16 :goto_0

    .line 53
    :cond_3
    instance-of v0, p1, Lo/Build$Application;

    if-eqz v0, :cond_4

    .line 54
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->i_()V

    .line 55
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->j_()V

    goto/16 :goto_0

    .line 58
    :cond_4
    instance-of v0, p1, Lo/Build$ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 59
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1, v1}, Lo/DeadSystemException;->c(Z)V

    .line 60
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->c()V

    goto/16 :goto_0

    .line 63
    :cond_5
    instance-of v0, p1, Lo/Build$DialogInterface;

    if-eqz v0, :cond_6

    .line 64
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/DeadSystemException;->c(Z)V

    .line 65
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->c()V

    goto/16 :goto_0

    .line 68
    :cond_6
    instance-of v0, p1, Lo/Build$Cursor;

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    move-object v2, p1

    check-cast v2, Lo/Build$Cursor;

    invoke-virtual {v2}, Lo/Build$Cursor;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lo/Build$Cursor;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lo/DeadSystemException;->e(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {v2}, Lo/Build$Cursor;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {v2}, Lo/DropBoxManager;->e(Lo/DropBoxManager;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 75
    :cond_7
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {v2, v1}, Lo/DropBoxManager;->e(Lo/DropBoxManager;I)V

    .line 79
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    const-wide/16 v2, 0x1

    .line 77
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 78
    new-instance v3, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;

    invoke-direct {v3, p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;-><init>(Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;Lo/Build;)V

    check-cast v3, Lio/reactivex/functions/Predicate;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v2, "Observable\n             \u2026bbing && !uiView.paused }"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 79
    new-instance v2, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;

    invoke-direct {v2, v0, p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;-><init>(ILcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;Lo/Build;)V

    move-object v7, v2

    check-cast v7, Lo/alA;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {v1, p1}, Lo/DropBoxManager;->a(Lo/DropBoxManager;Lio/reactivex/disposables/Disposable;)V

    .line 87
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "artificialTimerSubscription started"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_8
    instance-of v0, p1, Lo/Build$CursorFactory;

    if-eqz v0, :cond_9

    .line 92
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->l_()V

    goto :goto_0

    .line 95
    :cond_9
    instance-of v0, p1, Lo/Build$Bitmap;

    if-eqz v0, :cond_a

    .line 96
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->k_()V

    goto :goto_0

    .line 99
    :cond_a
    instance-of v0, p1, Lo/Build$IntentSender;

    if-eqz v0, :cond_b

    .line 100
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->e()V

    goto :goto_0

    .line 103
    :cond_b
    instance-of v0, p1, Lo/Build$ApplicationInfo;

    if-eqz v0, :cond_c

    .line 104
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->b()V

    goto :goto_0

    .line 107
    :cond_c
    instance-of v0, p1, Lo/Build$DatabaseErrorHandler;

    if-eqz v0, :cond_d

    .line 108
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    check-cast p1, Lo/Build$DatabaseErrorHandler;

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->a()F

    move-result v1

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/DeadSystemException;->e(FI)V

    :cond_d
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
