.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lo/zT;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/zT;Z)V
    .locals 0

    .line 2087
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2085
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->a:Z

    .line 2088
    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->b:Lo/zT;

    .line 2089
    iput-boolean p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->a:Z

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 2101
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lo/Am;->T()Lo/Ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Ag;)Lo/Ag;

    .line 2103
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/Se;

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/Se;-><init>(Landroid/content/Context;Lo/BC;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$502(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Se;)Lo/Se;

    .line 2104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    .line 2106
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h()V

    .line 2114
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2116
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/LU;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$802(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    .line 2120
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2129
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v0

    .line 2130
    instance-of v1, v0, Lo/zT;

    if-eqz v1, :cond_3

    .line 2131
    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2134
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2135
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2136
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2141
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 2144
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->b:Lo/zT;

    if-eqz v0, :cond_5

    .line 2145
    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2150
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2151
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2153
    iget-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->a:Z

    if-eqz p1, :cond_6

    .line 2154
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayerPostPlayOnResume()V

    .line 2161
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()Z

    .line 2163
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2165
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2166
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    iget-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;->run(Lo/Am;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1600()Lo/Ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Ag;)Lo/Ag;

    .line 2178
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/LU;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v0

    .line 2183
    instance-of v1, v0, Lo/zT;

    if-eqz v1, :cond_1

    .line 2184
    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2187
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->b:Lo/zT;

    if-eqz v0, :cond_2

    .line 2190
    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2193
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2194
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 2197
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldFinishOnManagerError()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2201
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 2204
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2205
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    .line 2206
    instance-of p2, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    if-eqz p2, :cond_4

    .line 2207
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    iget-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;->a(Lo/Am;)V

    goto :goto_0

    :cond_5
    return-void
.end method
