.class public final enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field private static final synthetic c:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field private static final d:Landroid/util/TypedValue;

.field private static e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    const/4 v2, 0x1

    const-string v3, "KIDS_THEME"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 36
    sget-object v3, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 66
    const-class v0, Landroid/content/Context;

    .line 67
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_browse_experience"

    .line 66
    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d:Landroid/util/TypedValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d(Landroid/content/res/Resources$Theme;I)Z

    move-result p0

    return p0

    .line 207
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Context was null or not wrapping an Activity on getBooleanFromTheme"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/app/Activity;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p0

    return p0

    .line 139
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Context was null or not wrapping an Activity on getResourceIdFromTheme"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 140
    sget p0, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    return p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/content/res/Resources$Theme;I)I

    move-result p0

    return p0

    .line 174
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Context was null or not wrapping an Activity on getColorFromTheme"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 250
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    invoke-static {p0, p1}, Lo/RemoteException;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lo/BC;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0}, Lo/BC;->isKidsProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 88
    sget-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 90
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 101
    :goto_1
    const-class p0, Landroid/content/Context;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_browse_experience"

    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 117
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/et;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/res/Resources$Theme;I)I
    .locals 2

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 151
    sget-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d:Landroid/util/TypedValue;

    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    return p0

    .line 153
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requesting theme\'s resource id. Theme was kid? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Requested a Theme resource id that was not existing"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 155
    sget p0, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    return p0
.end method

.method public static c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;
    .locals 1

    .line 121
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->e:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->b:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 54
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "BrowseExperience.stringToBrowseExperience should not be invalid"

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 55
    sget-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object p0
.end method

.method public static d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;I)V

    return-void

    .line 274
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Activity was null on setTintedDrawableForTheme"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 2

    .line 113
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(Landroid/content/res/Resources$Theme;I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 218
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 219
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static e(Landroid/content/res/Resources$Theme;I)I
    .locals 2

    .line 185
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 186
    sget-object p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d:Landroid/util/TypedValue;

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    .line 188
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requesting theme\'s color. Theme was kid? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Requested a Theme color attribute that was not existing"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/graphics/drawable/Drawable;Landroid/app/Activity;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 238
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Activity was null on getTintedDrawableForTheme"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;I)V
    .locals 0

    .line 283
    invoke-static {p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/content/res/Resources$Theme;I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 285
    invoke-static {p1, p2}, Lo/RemoteException;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .line 36
    const-class v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method
