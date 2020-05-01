.class public final Lo/PF;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PF$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/PF$Activity;


# instance fields
.field private final f:Lo/PL;

.field private h:Lo/PP;

.field private final i:Lo/UpdateEngine;

.field private j:Lo/PN;

.field private m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PF$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PF$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/PF;->b:Lo/PF$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 22
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/PF;->i:Lo/UpdateEngine;

    .line 24
    new-instance v0, Lo/PL;

    invoke-direct {v0}, Lo/PL;-><init>()V

    iput-object v0, p0, Lo/PF;->f:Lo/PL;

    .line 31
    invoke-direct {p0}, Lo/PF;->d()V

    return-void
.end method

.method private final d()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/PF;->i:Lo/UpdateEngine;

    .line 37
    const-class v1, Lo/Pe;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 38
    new-instance v1, Lo/PF$ActionBar;

    invoke-direct {v1, p0}, Lo/PF$ActionBar;-><init>(Lo/PF;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lo/PF;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 60
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lo/PF;->b:Lo/PF$Activity;

    invoke-virtual {v0}, Lo/PF$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Container is null: cannot create Notifications UI"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p1

    .line 65
    :cond_0
    new-instance p3, Lo/PN;

    iget-object v0, p0, Lo/PF;->i:Lo/UpdateEngine;

    invoke-direct {p3, p2, v0}, Lo/PN;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;)V

    iput-object p3, p0, Lo/PF;->j:Lo/PN;

    .line 67
    new-instance p2, Lo/PP;

    .line 68
    iget-object p3, p0, Lo/PF;->i:Lo/UpdateEngine;

    const-class v0, Lo/Ph;

    invoke-virtual {p3, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    .line 69
    iget-object v0, p0, Lo/PF;->j:Lo/PN;

    const-string v1, "multiTitleNotificationUIView"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Lo/Pr;

    .line 70
    iget-object v2, p0, Lo/PF;->f:Lo/PL;

    check-cast v2, Lo/Pq;

    .line 67
    invoke-direct {p2, p3, v0, v2}, Lo/PP;-><init>(Lio/reactivex/Observable;Lo/Pr;Lo/Pq;)V

    iput-object p2, p0, Lo/PF;->h:Lo/PP;

    .line 74
    invoke-virtual {p0}, Lo/PF;->getActivity()Lo/Serializable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p1, "notification_event_guid"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    iget-object p2, p0, Lo/PF;->i:Lo/UpdateEngine;

    .line 78
    const-class p3, Lo/Ph;

    .line 79
    new-instance v0, Lo/Ph$Activity;

    invoke-direct {v0, p1}, Lo/Ph$Activity;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/VintfObject;

    .line 77
    invoke-virtual {p2, p3, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lo/PF;->b:Lo/PF$Activity;

    invoke-virtual {p3}, Lo/PF$Activity;->getLogTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": eventGuid is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 85
    :goto_0
    iget-object p1, p0, Lo/PF;->j:Lo/PN;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lo/PN;->y()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/PF;->c()V

    return-void
.end method
