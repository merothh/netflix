.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/NotificationHeaderView;


# direct methods
.method public constructor <init>(Lo/NotificationHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;->a:Lo/NotificationHeaderView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;->a:Lo/NotificationHeaderView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->hM:I

    invoke-virtual {v0, v1}, Lo/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
