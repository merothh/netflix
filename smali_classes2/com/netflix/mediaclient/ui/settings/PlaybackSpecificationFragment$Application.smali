.class Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.p\u2026k_specification_item_key)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->a:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.p\u2026specification_item_value)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->a:Landroid/widget/TextView;

    return-object v0
.end method
