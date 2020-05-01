.class public final Lo/WallpaperSettingsActivity;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;
    .locals 1

    const-string v0, "warningView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lo/AccessibilityClickableSpan;

    invoke-direct {v0, p1, p2}, Lo/AccessibilityClickableSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)V

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;
    .locals 1

    const-string v0, "button"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lo/BulletSpan;

    invoke-direct {v0, p1}, Lo/BulletSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)V

    return-object v0
.end method
