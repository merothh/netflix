.class public final Lo/acl$ActionBar;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acl;->c(Lo/acl$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/acl;

.field final synthetic e:Lo/acl$TaskDescription;


# direct methods
.method constructor <init>(Lo/acl;Lo/acl$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/acl$TaskDescription;",
            ")V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lo/acl$ActionBar;->a:Lo/acl;

    iput-object p2, p0, Lo/acl$ActionBar;->e:Lo/acl$TaskDescription;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lo/acl$ActionBar;->a:Lo/acl;

    iget-object v0, p0, Lo/acl$ActionBar;->e:Lo/acl$TaskDescription;

    invoke-virtual {v0}, Lo/acl$TaskDescription;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "viewHolder.footerView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/acl;->e(Lo/acl;Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 43
    iget-object v0, p0, Lo/acl$ActionBar;->e:Lo/acl$TaskDescription;

    invoke-virtual {v0}, Lo/acl$TaskDescription;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
