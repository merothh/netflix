.class Lo/Np$ActionBar;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Iq$Application;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Iq$Application;",
            ">;)V"
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lo/Np$ActionBar;->e:Lo/Np;

    .line 659
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 660
    iput-object p2, p0, Lo/Np$ActionBar;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(I)Lo/Iq$Application;
    .locals 1

    .line 670
    iget-object v0, p0, Lo/Np$ActionBar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Iq$Application;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 665
    iget-object v0, p0, Lo/Np$ActionBar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lo/Np$ActionBar;->b(I)Lo/Iq$Application;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 682
    iget-object p2, p0, Lo/Np$ActionBar;->e:Lo/Np;

    iget-object p2, p2, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cK:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 685
    :cond_0
    invoke-virtual {p0, p1}, Lo/Np$ActionBar;->b(I)Lo/Iq$Application;

    move-result-object p1

    .line 686
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->qF:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lo/Iq$Application;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
