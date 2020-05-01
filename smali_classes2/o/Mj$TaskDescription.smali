.class public Lo/Mj$TaskDescription;
.super Lo/PendingIntent$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lo/Mj$StateListAnimator;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ListView;

.field private final e:Landroid/app/Activity;

.field private h:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lo/Mj$TaskDescription;->e:Landroid/app/Activity;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cH:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Mj$TaskDescription;->c:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lo/Mj$TaskDescription;->c:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Mj$TaskDescription;->a:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lo/Mj$TaskDescription;->c:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lo/Mj$TaskDescription;->d:Landroid/widget/ListView;

    .line 67
    new-instance v0, Lo/Mj$StateListAnimator;

    invoke-direct {v0, p1}, Lo/Mj$StateListAnimator;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    .line 68
    iget-object p1, p0, Lo/Mj$TaskDescription;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lo/Mj$TaskDescription;->a(Z)Lo/PendingIntent$Activity;

    return-void
.end method

.method static synthetic b(Lo/Mj$TaskDescription;)Lo/Mj$StateListAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lo/Mj$TaskDescription;
    .locals 0

    .line 80
    iput-object p1, p0, Lo/Mj$TaskDescription;->h:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public synthetic a(I)Lo/PendingIntent$Activity;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lo/Mj$TaskDescription;->d(I)Lo/Mj$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method public a()Lo/PendingIntent;
    .locals 3

    .line 106
    new-instance v0, Lo/Mj;

    iget-object v1, p0, Lo/Mj$TaskDescription;->e:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/Mj;-><init>(Landroid/content/Context;Lo/Mj$1;)V

    .line 107
    iget-object v1, p0, Lo/Mj$TaskDescription;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/Mj;->e(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lo/Mj;->setCanceledOnTouchOutside(Z)V

    .line 109
    iget-object v1, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/Mj;->b(Lo/Mj$StateListAnimator;)V

    .line 110
    iget-object v1, p0, Lo/Mj$TaskDescription;->h:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Lo/Mj;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lo/Mj$TaskDescription;->d:Landroid/widget/ListView;

    new-instance v1, Lo/Mj$TaskDescription$4;

    invoke-direct {v1, p0, p1}, Lo/Mj$TaskDescription$4;-><init>(Lo/Mj$TaskDescription;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    invoke-virtual {v0, p1, p2}, Lo/Mj$StateListAnimator;->e(ILjava/lang/String;)V

    return-void
.end method

.method public d(I)Lo/Mj$TaskDescription;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/Mj$TaskDescription;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public synthetic d(Landroid/content/DialogInterface$OnCancelListener;)Lo/PendingIntent$Activity;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lo/Mj$TaskDescription;->a(Landroid/content/DialogInterface$OnCancelListener;)Lo/Mj$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/Mj$TaskDescription;->b:Lo/Mj$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/Mj$StateListAnimator;->e(Ljava/util/List;)V

    return-void
.end method
