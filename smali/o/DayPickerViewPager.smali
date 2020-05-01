.class public Lo/DayPickerViewPager;
.super Landroid/widget/TextView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static e:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lo/DayPickerViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lo/DayPickerViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lo/DayPickerViewPager;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 34
    sget-object v0, Lo/DayPickerViewPager;->e:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lo/DayPickerViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "nf-icon.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lo/DayPickerViewPager;->e:Landroid/graphics/Typeface;

    .line 37
    :cond_0
    sget-object v0, Lo/DayPickerViewPager;->e:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lo/DayPickerViewPager;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
