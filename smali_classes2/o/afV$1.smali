.class Lo/afV$1;
.super Lo/afX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afV;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/afV;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/afV;Landroid/view/View;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/afV$1;->a:Lo/afV;

    iput-object p2, p0, Lo/afV$1;->e:Landroid/view/View;

    invoke-direct {p0}, Lo/afX;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lo/afV$1;->a:Lo/afV;

    invoke-static {p1}, Lo/afV;->c(Lo/afV;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lo/afV$1;->a:Lo/afV;

    iget-object v0, p0, Lo/afV$1;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lo/afV;->e(Lo/afV;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object p1, p0, Lo/afV$1;->e:Landroid/view/View;

    iget-object v0, p0, Lo/afV$1;->a:Lo/afV;

    invoke-static {v0}, Lo/afV;->c(Lo/afV;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public d(Lo/CharsetDecoder;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lo/afV$1;->e:Landroid/view/View;

    iget-object v0, p0, Lo/afV$1;->a:Lo/afV;

    invoke-static {v0}, Lo/afV;->a(Lo/afV;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object p1, p0, Lo/afV$1;->a:Lo/afV;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/afV;->e(Lo/afV;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method
