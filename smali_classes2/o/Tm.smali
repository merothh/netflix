.class public final Lo/Tm;
.super Lo/Th;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Tm$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/Tm$TaskDescription;


# instance fields
.field private e:Lo/BC;

.field private m:Z

.field private o:Z

.field private q:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Tm$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Tm$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Tm;->c:Lo/Tm$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 168
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 38
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lookup.get<Context>().ge\u2026tring.profile_pin_prompt)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/Th;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pv:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "netflixActivity.getStrin\u2026tring.profile_pin_prompt)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/Th;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lo/Tm;->e:Lo/BC;

    return-void
.end method

.method public static final synthetic a(Lo/Tm;)Lo/BC;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Tm;->e:Lo/BC;

    return-object p0
.end method

.method public static final synthetic a(Lo/Tm;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/Tm;->o:Z

    return-void
.end method

.method public static final synthetic b(Lo/Tm;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Tm;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic b(Lo/Tm;Z)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/Tm;->b(Z)V

    return-void
.end method

.method public static final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;
    .locals 1

    sget-object v0, Lo/Tm;->c:Lo/Tm$TaskDescription;

    invoke-virtual {v0, p0, p1}, Lo/Tm$TaskDescription;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/Tm;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/Tm;->m:Z

    return-void
.end method

.method public static final synthetic e(Lo/Tm;Lo/BC;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Tm;->e:Lo/BC;

    return-void
.end method

.method public static final synthetic e(Lo/Tm;Z)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/Tm;->d(Z)V

    return-void
.end method

.method public static final synthetic e(Lo/Tm;ZLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/Tm;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lo/Tm;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lo/Tm;->m:Z

    return p0
.end method

.method private final i()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lo/Tm;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lo/Tm;->o:Z

    const/4 v0, 0x1

    .line 131
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pF:I

    invoke-virtual {p0, v1}, Lo/Tm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/Tm;->b(ZLjava/lang/String;)V

    .line 133
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    invoke-virtual {v0}, Lo/JM;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 167
    new-instance v1, Lo/Tm$ActionBar;

    invoke-direct {v1, p0}, Lo/Tm$ActionBar;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/ObservableSource;

    .line 135
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 136
    new-instance v1, Lo/Tm$Activity;

    const-string v2, "ProfilePinDialog refreshProfileIfNeeded"

    .line 137
    invoke-direct {v1, p0, v2}, Lo/Tm$Activity;-><init>(Lo/Tm;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/Observer;

    .line 136
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lo/Tm;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredPin"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1, p2}, Lo/Th;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/SubmitCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SubmitCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 111
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/ValidatePin;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/action/ValidatePin;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 115
    iget-object p1, p0, Lo/Tm;->e:Lo/BC;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/BC;->getProfileLockPin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    sget-object p1, Lo/Tm;->c:Lo/Tm$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 117
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 118
    sget-object p1, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    check-cast p1, Lo/Tk;

    invoke-virtual {p0, p1}, Lo/Tm;->a(Lo/Tk;)V

    goto :goto_1

    .line 120
    :cond_1
    sget-object p1, Lo/Tm;->c:Lo/Tm$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 121
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 122
    new-instance p1, Lo/Tk$TaskDescription;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, v1, p2, v0, v1}, Lo/Tk$TaskDescription;-><init>(Ljava/lang/String;ZILo/amc;)V

    check-cast p1, Lo/Tk;

    invoke-virtual {p0, p1}, Lo/Tm;->a(Lo/Tk;)V

    :goto_1
    return-void
.end method

.method protected d(Landroid/app/Dialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lo/Th;->d(Landroid/app/Dialog;)V

    .line 77
    iget-object p1, p0, Lo/Tm;->j:Landroid/widget/TextView;

    new-instance v0, Lo/Tm$Application;

    invoke-direct {v0, p0}, Lo/Tm$Application;-><init>(Lo/Tm;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lo/Th;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lo/Tm;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Th;->onDestroyView()V

    invoke-virtual {p0}, Lo/Tm;->b()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 58
    invoke-super {p0}, Lo/Th;->onPause()V

    .line 62
    iget-boolean v0, p0, Lo/Tm;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lo/Tm;->m:Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lo/Tm;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    check-cast v0, Landroid/content/DialogInterface;

    invoke-virtual {p0, v0}, Lo/Tm;->onCancel(Landroid/content/DialogInterface;)V

    .line 69
    invoke-virtual {p0}, Lo/Tm;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 102
    invoke-super {p0}, Lo/Th;->onResume()V

    .line 104
    invoke-direct {p0}, Lo/Tm;->i()V

    return-void
.end method
