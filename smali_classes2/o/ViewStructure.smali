.class public final Lo/ViewStructure;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Landroid/content/res/TypedArray;I)I
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {p0, p1}, Lo/ViewStructure;->c(Landroid/content/res/TypedArray;I)V

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private static final c(Landroid/content/res/TypedArray;I)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute not defined in set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
