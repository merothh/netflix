.class public final Lo/TwoLineListItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Landroid/util/TypedValue;

.field public static final e:Lo/TwoLineListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/TwoLineListItem;

    invoke-direct {v0}, Lo/TwoLineListItem;-><init>()V

    sput-object v0, Lo/TwoLineListItem;->e:Lo/TwoLineListItem;

    .line 16
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lo/TwoLineListItem;->d:Landroid/util/TypedValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)Landroid/graphics/Typeface;
    .locals 2

    .line 61
    sget-object v0, Lo/TwoLineListItem;->e:Lo/TwoLineListItem;

    .line 63
    sget v1, Lo/IHwInterface$ActionBar;->n:I

    .line 61
    invoke-direct {v0, p0, v1}, Lo/TwoLineListItem;->e(Landroid/app/Activity;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroid/app/Activity;)Landroid/graphics/Typeface;
    .locals 2

    .line 49
    sget-object v0, Lo/TwoLineListItem;->e:Lo/TwoLineListItem;

    .line 51
    sget v1, Lo/IHwInterface$ActionBar;->m:I

    .line 49
    invoke-direct {v0, p0, v1}, Lo/TwoLineListItem;->e(Landroid/app/Activity;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroid/app/Activity;)Landroid/graphics/Typeface;
    .locals 2

    .line 37
    sget-object v0, Lo/TwoLineListItem;->e:Lo/TwoLineListItem;

    .line 39
    sget v1, Lo/IHwInterface$ActionBar;->r:I

    .line 37
    invoke-direct {v0, p0, v1}, Lo/TwoLineListItem;->e(Landroid/app/Activity;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/app/Activity;I)Landroid/graphics/Typeface;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceCompatGetFontDetector"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    check-cast v0, Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lo/TwoLineListItem;->d:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    check-cast p1, Landroid/content/Context;

    sget-object p2, Lo/TwoLineListItem;->d:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, p2}, Lo/ViewTreeObserver;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Activity was null"

    .line 77
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
