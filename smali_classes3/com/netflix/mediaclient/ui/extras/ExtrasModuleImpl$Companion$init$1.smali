.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;
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
        "Lo/u$TaskDescription$StateListAnimator;",
        ">;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Og$Application;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroid/app/Activity;",
            "Lo/u$TaskDescription$StateListAnimator;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "routeData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 38
    sget-object v1, Lo/GH;->c:Lo/GH$ActionBar;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/u$TaskDescription$StateListAnimator;

    invoke-virtual {v1, v0, p1}, Lo/GH$ActionBar;->d(Landroid/content/Context;Lo/u$TaskDescription$StateListAnimator;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;->a(Lo/Og$Application;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
