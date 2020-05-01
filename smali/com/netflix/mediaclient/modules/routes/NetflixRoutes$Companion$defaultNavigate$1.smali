.class public final Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
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
        "Lo/akj;",
        "Lo/akj;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;->e:Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/Og$Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Lo/akj;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Og$Application;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;->e(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
