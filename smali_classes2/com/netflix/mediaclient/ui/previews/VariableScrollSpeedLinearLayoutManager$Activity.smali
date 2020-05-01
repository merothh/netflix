.class public final Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;
.super Lo/UnknownError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;-><init>(Landroid/content/Context;FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;->g:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;

    invoke-direct {p0, p2}, Lo/UnknownError;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1}, Lo/UnknownError;->e(Landroid/util/DisplayMetrics;)F

    move-result p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;->g:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->b(Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;)F

    move-result v0

    mul-float p1, p1, v0

    return p1
.end method

.method public e(I)Landroid/graphics/PointF;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager$Activity;->g:Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
