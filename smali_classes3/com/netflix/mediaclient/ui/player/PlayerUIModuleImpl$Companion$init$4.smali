.class public final Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;
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
        "Landroid/content/Context;",
        "Lo/u$FragmentManager$Activity;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;->a:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Og$Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroid/content/Context;",
            "Lo/u$FragmentManager$Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/u$FragmentManager$Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/u$FragmentManager$Activity;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 86
    :goto_0
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/u$FragmentManager$Activity;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/u$FragmentManager$Activity;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 87
    :goto_1
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/u$FragmentManager$Activity;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/u$FragmentManager$Activity;->c()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 88
    :cond_2
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/u$FragmentManager$Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/u$FragmentManager$Activity;->e()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 83
    :goto_2
    invoke-static {v0, v1, v3, v2, p1}, Lo/Ty;->c(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;->d(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
