.class public final Lo/CommonTimeConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lo/CommonTimeConfig;->d:Landroid/util/TypedValue;

    return-void
.end method

.method private static final a(Landroid/content/res/Resources;I)F
    .locals 2

    .line 136
    sget-object v0, Lo/CommonTimeConfig;->d:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 137
    sget-object p0, Lo/CommonTimeConfig;->d:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroid/content/res/Resources;I)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/CommonTimeConfig;->a(Landroid/content/res/Resources;I)F

    move-result p0

    return p0
.end method

.method public static final c(Landroid/view/View;F)V
    .locals 2

    const-string v0, "$this$alphaAndVisibility"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 119
    invoke-static {p1, v0}, Lo/PowerSaveState;->e(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
