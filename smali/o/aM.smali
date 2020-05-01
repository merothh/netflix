.class public final Lo/aM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aM$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/aM$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aM$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aM$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aM;->e:Lo/aM$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 40
    new-instance v1, Lo/aM$StateListAnimator;

    invoke-direct {v1, p1}, Lo/aM$StateListAnimator;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lo/zU;

    .line 38
    invoke-virtual {v0, p2, v1}, Lo/Am;->e(Ljava/lang/String;Lo/zU;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/aM;->e()Lcom/netflix/cl/model/event/session/command/HomeCommand;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    const-string p3, "activity"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 28
    invoke-static {p2}, Lo/akz;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lo/aM;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 31
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method public e()Lcom/netflix/cl/model/event/session/command/HomeCommand;
    .locals 1

    .line 35
    new-instance v0, Lcom/netflix/cl/model/event/session/command/HomeCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/HomeCommand;-><init>()V

    return-object v0
.end method
