.class public final Lcom/netflix/mediaclient/acquisition/util/AUIViewUtilitiesKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final updateLoginRipple(Lo/HorizontalScrollView;Z)V
    .locals 14

    const-string v0, "button"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lo/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->j:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->y:I

    :goto_0
    invoke-static {v0, p1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3df

    const/4 v13, 0x0

    move-object v1, p0

    .line 10
    invoke-static/range {v1 .. v13}, Lo/HorizontalScrollView;->c(Lo/HorizontalScrollView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZILjava/lang/Object;)V

    return-void
.end method
