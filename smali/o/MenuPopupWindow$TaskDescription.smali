.class final Lo/MenuPopupWindow$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lo/MenuPopupWindow;

.field private final c:I

.field private d:Lo/BC;

.field private e:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lo/MenuPopupWindow;Lo/BC;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BC;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Z)V"
        }
    .end annotation

    const-string v0, "avatar"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->b:Lo/MenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/MenuPopupWindow$TaskDescription;->d:Lo/BC;

    iput-object p3, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    iput-object p4, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    if-eqz p5, :cond_0

    .line 308
    invoke-static {p1}, Lo/MenuPopupWindow;->d(Lo/MenuPopupWindow;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/MenuPopupWindow;->a(Lo/MenuPopupWindow;)I

    move-result p1

    :goto_0
    iput p1, p0, Lo/MenuPopupWindow$TaskDescription;->a:I

    const/4 p1, 0x4

    const/4 p2, 0x1

    int-to-float p1, p1

    .line 336
    sget-object p3, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 337
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "Lookup.get<Context>().resources"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 336
    invoke-static {p2, p1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lo/MenuPopupWindow$TaskDescription;->c:I

    .line 312
    iget-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->d:Lo/BC;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->e:Ljava/lang/String;

    .line 313
    iget-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->pK:I

    iget-object p3, p0, Lo/MenuPopupWindow$TaskDescription;->d:Lo/BC;

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->pK:I

    iget-object p3, p0, Lo/MenuPopupWindow$TaskDescription;->d:Lo/BC;

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 316
    iget-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lo/MenuPopupWindow$TaskDescription;->a:I

    const/4 p3, 0x5

    invoke-static {p1, p3, p2}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 317
    iget-object p1, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lo/MenuPopupWindow$TaskDescription;->c:I

    invoke-static {p1, p3, p2}, Lo/RemoteException;->c(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 304
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()Lo/BC;
    .locals 1

    .line 302
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->d:Lo/BC;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 1

    .line 303
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final e(I)V
    .locals 2

    .line 321
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget-object v0, p0, Lo/MenuPopupWindow$TaskDescription;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lo/MenuPopupWindow$TaskDescription;->a:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget v1, p0, Lo/MenuPopupWindow$TaskDescription;->c:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
