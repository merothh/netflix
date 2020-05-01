.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Application;
.super Lo/ListPopupWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Application;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p0}, Lo/ListPopupWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Application;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    const-string v1, "scroll_ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Ljava/lang/String;)V

    return-void
.end method
