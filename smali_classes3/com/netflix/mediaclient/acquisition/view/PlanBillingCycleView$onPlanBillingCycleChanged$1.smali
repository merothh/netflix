.class final Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
