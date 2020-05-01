.class Lo/Environment;
.super Lo/Bundle;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/TextClassifier;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lo/Bundle;-><init>(Landroid/content/Context;Lo/ExtractedTextRequest;)V

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0}, Lo/TextClassifier;->clearHeader()V

    return-void
.end method

.method public d()Lo/TextClassifier;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/Environment;->a:Ljava/lang/Object;

    check-cast v0, Lo/TextClassifier;

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0}, Lo/TextClassifier;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Environment;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/Environment;->d()Lo/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TextClassifier;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
