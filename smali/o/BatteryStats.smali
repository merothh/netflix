.class public final Lo/BatteryStats;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$children"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lo/BatteryStats$ActionBar;

    invoke-direct {v0, p0}, Lo/BatteryStats$ActionBar;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static final b(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2

    const-string v0, "$this$inflateAndAdd"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const-string p0, "LayoutInflater.from(cont\u2026ddView(this, index)\n    }"

    .line 54
    invoke-static {p1, p0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 53
    :cond_0
    invoke-static {p0, p1, p2}, Lo/BatteryStats;->b(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
