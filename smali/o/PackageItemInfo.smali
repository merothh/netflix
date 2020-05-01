.class public Lo/PackageItemInfo;
.super Landroid/view/ActionMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PackageItemInfo$TaskDescription;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final c:Lo/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ServiceConnection;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 49
    iput-object p1, p0, Lo/PackageItemInfo;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .line 85
    iget-object v0, p0, Lo/PackageItemInfo;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v1}, Lo/ServiceConnection;->c()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lo/ExtractedTextRequest;

    invoke-static {v0, v1}, Lo/Uri;->e(Landroid/content/Context;Lo/ExtractedTextRequest;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->h()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->i()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->m()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->e()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0}, Lo/ServiceConnection;->f()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->e(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->d(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->e(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    invoke-virtual {v0, p1}, Lo/ServiceConnection;->d(Z)V

    return-void
.end method
