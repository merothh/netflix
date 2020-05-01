.class public final Lo/ZenModeConfig$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# instance fields
.field private final c:Landroid/widget/TextView;

.field final synthetic d:Lo/ZenModeConfig;

.field private final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lo/ZenModeConfig;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lo/ZenModeConfig$Activity;->d:Lo/ZenModeConfig;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 30
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->sW:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ZenModeConfig$Activity;->c:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->dd:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ZenModeConfig$Activity;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ZenModeConfig$Activity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ZenModeConfig$Activity;->e:Landroid/widget/TextView;

    return-object v0
.end method
