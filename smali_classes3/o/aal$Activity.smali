.class public final Lo/aal$Activity;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field public b:Lo/BaseAdapter;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 2

    .line 92
    iget-object v0, p0, Lo/aal$Activity;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "playIcon"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lo/BaseAdapter;
    .locals 2

    .line 90
    iget-object v0, p0, Lo/aal$Activity;->b:Lo/BaseAdapter;

    if-nez v0, :cond_0

    const-string v1, "artwork"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 2

    .line 91
    iget-object v0, p0, Lo/aal$Activity;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "title"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lo/aal$Activity;->c:Landroid/view/View;

    .line 96
    sget v0, Lo/Zt$Application;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.item_artwork)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/aal$Activity;->b:Lo/BaseAdapter;

    .line 97
    sget v0, Lo/Zt$Application;->g:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.item_title)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aal$Activity;->e:Landroid/widget/TextView;

    .line 98
    sget v0, Lo/Zt$Application;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.item_play_icon)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aal$Activity;->d:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "itemView.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "itemView.context.resources"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    sget-object v0, Lo/aal;->i:Lo/aal$StateListAnimator;

    invoke-virtual {v0}, Lo/aal$StateListAnimator;->d()F

    move-result v0

    mul-float p1, p1, v0

    .line 102
    iget-object v0, p0, Lo/aal$Activity;->b:Lo/BaseAdapter;

    if-nez v0, :cond_0

    const-string v1, "artwork"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v0}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    invoke-virtual {v0}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v2, Lo/aal;->i:Lo/aal$StateListAnimator;

    invoke-virtual {v2}, Lo/aal$StateListAnimator;->e()F

    move-result v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    invoke-virtual {v0}, Lo/BaseAdapter;->requestLayout()V

    .line 108
    iget-object p1, p0, Lo/aal$Activity;->d:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const-string v0, "playIcon"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast p1, Landroid/view/View;

    .line 109
    sget-object v0, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v0}, Lo/ZP$Activity;->c()I

    move-result v0

    .line 110
    sget-object v1, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v1}, Lo/ZP$Activity;->c()I

    move-result v1

    .line 111
    sget-object v2, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v2}, Lo/ZP$Activity;->c()I

    move-result v2

    .line 112
    sget-object v3, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v3}, Lo/ZP$Activity;->c()I

    move-result v3

    .line 107
    invoke-static {p1, v0, v1, v2, v3}, Lo/RemoteException;->d(Landroid/view/View;IIII)V

    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 2

    .line 89
    iget-object v0, p0, Lo/aal$Activity;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "baseView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
