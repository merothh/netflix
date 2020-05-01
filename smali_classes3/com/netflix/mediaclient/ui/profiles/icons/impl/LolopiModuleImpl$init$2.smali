.class public final Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zl;->a()V
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
        "Landroidx/fragment/app/Fragment;",
        "Lo/u$Application;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;->b:Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Og$Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Og$Application<",
            "Landroidx/fragment/app/Fragment;",
            "Lo/u$Application;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lo/Og$Application;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/u$Application;

    if-eqz v0, :cond_0

    .line 42
    sget-object v1, Lo/Zk;->c:Lo/Zk$TaskDescription;

    .line 43
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/Serializable;

    move-result-object v2

    const-string v3, "route.source().requireActivity()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Lo/u$Application;->c()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v0}, Lo/u$Application;->d()Z

    move-result v4

    .line 46
    invoke-virtual {v0}, Lo/u$Application;->b()Z

    move-result v0

    .line 42
    invoke-virtual {v1, v2, v3, v4, v0}, Lo/Zk$TaskDescription;->e(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lo/Og$Application;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    const/16 v1, 0x1771

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Route data was null when launching LolopiModule from fragment"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/Og$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;->a(Lo/Og$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
