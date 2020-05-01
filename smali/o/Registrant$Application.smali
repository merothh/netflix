.class public final Lo/Registrant$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Registrant;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Registrant;


# direct methods
.method public constructor <init>(Lo/Registrant;)V
    .locals 0

    iput-object p1, p0, Lo/Registrant$Application;->b:Lo/Registrant;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 348
    iget-object p1, p0, Lo/Registrant$Application;->b:Lo/Registrant;

    invoke-static {p1}, Lo/Registrant;->d(Lo/Registrant;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_0

    .line 349
    iget-object p1, p0, Lo/Registrant$Application;->b:Lo/Registrant;

    invoke-static {p1}, Lo/Registrant;->d(Lo/Registrant;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lo/Registrant;->e(Lo/Registrant;I)V

    .line 351
    iget-object p1, p0, Lo/Registrant$Application;->b:Lo/Registrant;

    invoke-static {p1}, Lo/Registrant;->d(Lo/Registrant;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Registrant$StateListAnimator;

    .line 351
    invoke-virtual {p2}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p2

    const p3, 0x7fffffff

    invoke-virtual {p2, p3}, Lo/ImageSwitcher;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
