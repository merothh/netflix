.class public final Lo/aA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aA$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/aA$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aA$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aA$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aA;->d:Lo/aA$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;
    .locals 1

    .line 25
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;-><init>()V

    return-object v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/aA;->a()Lcom/netflix/cl/model/event/session/command/ViewNewsFeedCommand;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1
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

    .line 19
    sget-object v0, Lo/aA;->d:Lo/aA$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method
