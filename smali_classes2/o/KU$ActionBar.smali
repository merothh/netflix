.class public final Lo/KU$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lo/KU$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->s:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ZI)V
    .locals 2

    const-string v0, "netflixActionBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0xff

    if-eqz p2, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 p3, p3, 0xff

    .line 58
    div-int v1, p3, v0

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(I)V

    return-void
.end method
