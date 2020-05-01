.class public final Lo/Dd$Activity$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dd$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lo/Dd$Activity;

.field private b:Landroid/widget/RadioButton;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lo/Dd$Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "row"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lo/Dd$Activity$ActionBar;->a:Lo/Dd$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->sf:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "row.findViewById(R.id.sp\u2026d_selector_list_row_name)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/Dd$Activity$ActionBar;->e:Landroid/widget/TextView;

    .line 178
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->rX:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "row.findViewById(R.id.sp\u2026selector_list_row_choice)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lo/Dd$Activity$ActionBar;->b:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final b()Landroid/widget/RadioButton;
    .locals 1

    .line 178
    iget-object v0, p0, Lo/Dd$Activity$ActionBar;->b:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/Dd$Activity$ActionBar;->e:Landroid/widget/TextView;

    return-object v0
.end method
