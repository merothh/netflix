.class public final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ns$Activity;->d()V
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
        "Ljava/lang/String;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;->a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lo/Ny;->c:Lo/Ny$StateListAnimator;

    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lo/Ny$StateListAnimator;->a(Landroid/content/Context;)Lo/akj;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;->b(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
