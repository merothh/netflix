.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GO$ActionBar;->a()V
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
        "Lo/u$StateListAnimator$Activity;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroid/app/Activity;",
            "Lo/u$StateListAnimator$Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lo/GM;->d:Lo/GM$StateListAnimator;

    .line 46
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/u$StateListAnimator$Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/u$StateListAnimator$Activity;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0, v1, p1}, Lo/GM$StateListAnimator;->c(Landroid/content/Context;Ljava/lang/String;)Lo/akj;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;->d(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
