.class public final Lo/Fk$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fk;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Lo/Fk;


# direct methods
.method constructor <init>(Lo/Fk;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lo/Fk$ActionBar;->e:Lo/Fk;

    iput-object p2, p0, Lo/Fk$ActionBar;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "v"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {p1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 51
    iget-object p1, p0, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {p1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 53
    iget-object p1, p0, Lo/Fk$ActionBar;->e:Lo/Fk;

    invoke-virtual {p1}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object p1

    new-instance p2, Lo/Fk$ActionBar$StateListAnimator;

    invoke-direct {p2, p0}, Lo/Fk$ActionBar$StateListAnimator;-><init>(Lo/Fk$ActionBar;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
