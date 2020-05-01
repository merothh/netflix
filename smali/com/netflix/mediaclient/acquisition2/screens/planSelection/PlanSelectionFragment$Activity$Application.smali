.class final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/akj;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ApplicationLoaders;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mo:I

    invoke-virtual {p1, v0}, Lo/ApplicationLoaders;->c(I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;->a(Lo/akj;)V

    return-void
.end method
