.class public final Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/FirebaseJobDispatcher$ScheduleFailedException;
    }
.end annotation


# instance fields
.field private final a:Lo/EthernetManager;

.field private final b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

.field private d:Lo/LocalSocket$Application;


# direct methods
.method public constructor <init>(Lo/EthernetManager;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->a:Lo/EthernetManager;

    .line 90
    new-instance p1, Lcom/firebase/jobdispatcher/ValidationEnforcer;

    iget-object v0, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->a:Lo/EthernetManager;

    invoke-interface {v0}, Lo/EthernetManager;->e()Lo/LinkQualityInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/firebase/jobdispatcher/ValidationEnforcer;-><init>(Lo/LinkQualityInfo;)V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    .line 91
    new-instance p1, Lo/LocalSocket$Application;

    iget-object v0, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    invoke-direct {p1, v0}, Lo/LocalSocket$Application;-><init>(Lcom/firebase/jobdispatcher/ValidationEnforcer;)V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->d:Lo/LocalSocket$Application;

    return-void
.end method


# virtual methods
.method public b()Lo/IpSecAlgorithm$Application;
    .locals 2

    .line 159
    new-instance v0, Lo/IpSecAlgorithm$Application;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    invoke-direct {v0, v1}, Lo/IpSecAlgorithm$Application;-><init>(Lcom/firebase/jobdispatcher/ValidationEnforcer;)V

    return-object v0
.end method

.method public d(Lo/IpSecAlgorithm;)I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->a:Lo/EthernetManager;

    invoke-interface {v0}, Lo/EthernetManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->a:Lo/EthernetManager;

    invoke-interface {v0, p1}, Lo/EthernetManager;->b(Lo/IpSecAlgorithm;)I

    move-result p1

    return p1
.end method
