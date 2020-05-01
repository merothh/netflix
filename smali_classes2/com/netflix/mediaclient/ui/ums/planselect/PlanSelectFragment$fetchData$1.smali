.class public final Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/act;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Am;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/act;


# direct methods
.method public constructor <init>(Lo/act;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;->d:Lo/act;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Am;)V
    .locals 2

    .line 173
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;

    sget-object v1, Lo/act;->j:Lo/act$Application;

    invoke-virtual {v1}, Lo/act$Application;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;-><init>(Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;Ljava/lang/String;)V

    check-cast v0, Lo/zU;

    invoke-virtual {p1, v0}, Lo/Am;->d(Lo/zU;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lo/Am;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;->a(Lo/Am;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
