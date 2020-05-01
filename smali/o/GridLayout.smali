.class public final Lo/GridLayout;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GridLayout$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/GridLayout$StateListAnimator;


# instance fields
.field private c:Lo/FilterQueryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GridLayout$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GridLayout$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/GridLayout;->a:Lo/GridLayout$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v2, Lo/FilterQueryProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v18}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZILo/amc;)V

    iput-object v2, v0, Lo/GridLayout;->c:Lo/FilterQueryProvider;

    .line 37
    sget-object v2, Lo/FilterQueryProvider;->e:Lo/FilterQueryProvider$Application;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lo/FilterQueryProvider$Application;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/FilterQueryProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GridLayout;->setAttributes$widgetry_release(Lo/FilterQueryProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 19
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final setAttributes$widgetry_release(Lo/FilterQueryProvider;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lo/GridLayout;->c:Lo/FilterQueryProvider;

    .line 28
    new-instance v0, Lo/Filter;

    invoke-direct {v0, p1}, Lo/Filter;-><init>(Lo/FilterQueryProvider;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/GridLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0}, Lo/GridLayout;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/GridLayout;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lo/GridLayout;->c:Lo/FilterQueryProvider;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Lo/FilterQueryProvider;->f()I

    move-result v0

    .line 56
    invoke-static {p1, v1, v0}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
