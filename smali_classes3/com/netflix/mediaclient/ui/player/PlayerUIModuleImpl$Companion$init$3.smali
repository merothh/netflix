.class public final Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ud$Application;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Og$Application<",
        "Landroid/app/Activity;",
        "Lo/u$Fragment$TaskDescription;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;->e:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Og$Application;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroid/app/Activity;",
            "Lo/u$Fragment$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 71
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/u$Fragment$TaskDescription;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/u$Fragment$TaskDescription;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 72
    :goto_0
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/u$Fragment$TaskDescription;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/u$Fragment$TaskDescription;->e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 73
    :goto_1
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/u$Fragment$TaskDescription;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/u$Fragment$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 74
    :goto_2
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/u$Fragment$TaskDescription;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lo/u$Fragment$TaskDescription;->a()I

    move-result v5

    goto :goto_3

    .line 75
    :cond_3
    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->i:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->ordinal()I

    move-result v5

    .line 76
    :goto_3
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/u$Fragment$TaskDescription;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/u$Fragment$TaskDescription;->b()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object p1

    move-object v6, p1

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    move-object v2, v0

    .line 69
    invoke-static/range {v1 .. v6}, Lo/Ty;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;->b(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
