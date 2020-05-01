.class final Lo/Fk$ActionBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fk$ActionBar;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Fk$ActionBar;


# direct methods
.method constructor <init>(Lo/Fk$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lo/Fk$ActionBar$StateListAnimator;->b:Lo/Fk$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 54
    iget-object p1, p0, Lo/Fk$ActionBar$StateListAnimator;->b:Lo/Fk$ActionBar;

    iget-object p1, p1, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {p1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p1, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/LayoutInflater;

    .line 61
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->gh:I

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uX:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lo/Fk$ActionBar$StateListAnimator;->b:Lo/Fk$ActionBar;

    iget-object v2, v2, Lo/Fk$ActionBar;->b:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->d(Landroid/view/View;)Lo/PendingIntent$Activity;

    .line 71
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 74
    iget-object v1, p0, Lo/Fk$ActionBar$StateListAnimator;->b:Lo/Fk$ActionBar;

    iget-object v1, v1, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {v1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->getLocationOnScreen([I)V

    .line 77
    iget-object v1, p0, Lo/Fk$ActionBar$StateListAnimator;->b:Lo/Fk$ActionBar;

    iget-object v1, v1, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {v1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const-string v2, "alertDialog"

    .line 78
    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x800033

    .line 79
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 80
    aget v3, v0, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x1

    .line 81
    aget v0, v0, v3

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    :cond_0
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 58
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
