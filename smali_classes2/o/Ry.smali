.class public Lo/Ry;
.super Lo/Rw;
.source ""


# instance fields
.field private final c:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Ry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Ry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->b:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lo/Ry;->c:I

    .line 14
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->u:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/Ry;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 11
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Ry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lo/Rw;->b(Z)V

    .line 22
    invoke-virtual {p0}, Lo/Ry;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lo/Ry;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lo/Ry;->e:I

    :goto_0
    invoke-static {v0, p1}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setupDrawable()V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lo/Ry;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lo/Ry;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
