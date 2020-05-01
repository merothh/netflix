.class Lo/CT$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field b:Landroid/widget/TextView;

.field e:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/CT$Activity;->b:Landroid/widget/TextView;

    .line 440
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lo/CT$Activity;->e:Landroid/widget/RadioButton;

    return-void
.end method
