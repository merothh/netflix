.class public final Lo/OI;
.super Lo/OL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OI$TaskDescription;,
        Lo/OI$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private final c:Lio/reactivex/subjects/AsyncSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/AsyncSubject<",
            "Lo/OI;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Integer;

.field private e:Lo/Bc;

.field private f:Z

.field private final i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

.field private final j:I


# direct methods
.method public constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationHeroModule;Z)V
    .locals 3

    const-string v0, "module"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, v1, v0, v2}, Lo/OL;-><init>(ZILo/amc;)V

    iput p1, p0, Lo/OI;->j:I

    iput-object p2, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    iput-boolean p3, p0, Lo/OI;->f:Z

    .line 41
    invoke-static {}, Lio/reactivex/subjects/AsyncSubject;->create()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    const-string p2, "AsyncSubject.create()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/OI;->c:Lio/reactivex/subjects/AsyncSubject;

    .line 47
    iget-object p1, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, p2, :cond_1

    .line 48
    :cond_0
    iput-boolean v0, p0, Lo/OI;->f:Z

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationHeroModule;ZILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 35
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/OI;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationHeroModule;Z)V

    return-void
.end method

.method private final b(Ljava/lang/String;Lo/Am;)V
    .locals 6

    .line 100
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    .line 104
    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 105
    new-instance p2, Lo/OI$TaskDescription;

    invoke-direct {p2, p0}, Lo/OI$TaskDescription;-><init>(Lo/OI;)V

    move-object v5, p2

    check-cast v5, Lo/zU;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 100
    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    return-void
.end method

.method private final c(Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;Ljava/lang/String;Lo/Am;)V
    .locals 3

    .line 63
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;->titleId()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/OF;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const-string v2, "titleId"

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lo/OI;->b(Ljava/lang/String;Lo/Am;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p2, p3}, Lo/OI;->b(Ljava/lang/String;Lo/Am;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lo/OI;->d(Ljava/lang/String;Lo/Am;)V

    goto :goto_0

    .line 66
    :cond_4
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lo/OI;->e(Ljava/lang/String;Lo/Am;)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lo/OI;Ljava/lang/String;Lo/Am;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lo/OI;->d(Ljava/lang/String;Lo/Am;)V

    return-void
.end method

.method private final d(Ljava/lang/String;Lo/Am;)V
    .locals 3

    .line 91
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    .line 95
    new-instance v0, Lo/OI$TaskDescription;

    invoke-direct {v0, p0}, Lo/OI$TaskDescription;-><init>(Lo/OI;)V

    check-cast v0, Lo/zU;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-interface {p2, p1, v1, v2, v0}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    return-void
.end method

.method private final e(Ljava/lang/String;Lo/Am;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    .line 79
    new-instance v1, Lo/OI$Activity;

    invoke-direct {v1, p0, p2}, Lo/OI$Activity;-><init>(Lo/OI;Lo/Am;)V

    check-cast v1, Lo/zU;

    const/4 p2, 0x0

    .line 76
    invoke-interface {v0, p1, p2, v1}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 33
    iget v0, p0, Lo/OI;->j:I

    return v0
.end method

.method public final b()Lio/reactivex/subjects/AsyncSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/AsyncSubject<",
            "Lo/OI;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/OI;->c:Lio/reactivex/subjects/AsyncSubject;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/OI;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Lo/Am;)V
    .locals 3

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->actions()Ljava/util/List;

    move-result-object v0

    const-string v1, "module.actions()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    const-string v2, "action"

    .line 54
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->titleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lo/OI;->c(Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;Ljava/lang/String;Lo/Am;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lo/Bc;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/OI;->e:Lo/Bc;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lo/OI;->a:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/OI;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lo/Bc;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/OI;->e:Lo/Bc;

    return-object v0
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/OI;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lo/OI;->a:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/OI;->f:Z

    return v0
.end method

.method public final i()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/OI;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final j()Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/OI;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    return-object v0
.end method
