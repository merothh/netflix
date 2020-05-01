.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ApplicationPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$TaskDescription;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$TaskDescription;->e:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    const-string v0, "over_scroll"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(IIII)V
    .locals 0

    return-void
.end method
