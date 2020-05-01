.class public final Lo/MultiTapKeyListener$Application;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MultiTapKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/MultiTapKeyListener;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lo/MultiTapKeyListener;Landroid/view/View;)V
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

    .line 18
    iput-object p1, p0, Lo/MultiTapKeyListener$Application;->b:Lo/MultiTapKeyListener;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 19
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lo/MultiTapKeyListener$Application;->e:Landroid/widget/CheckBox;

    .line 20
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ck:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/MultiTapKeyListener$Application;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final d()Landroid/widget/CheckBox;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/MultiTapKeyListener$Application;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/MultiTapKeyListener$Application;->d:Landroid/widget/TextView;

    return-object v0
.end method
