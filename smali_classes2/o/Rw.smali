.class public Lo/Rw;
.super Lo/ImageSwitcher;
.source ""


# instance fields
.field private final b:Lo/aka;

.field private final c:Lo/aka;

.field private final e:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$onText$2;-><init>(Lo/Rw;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Rw;->e:Lo/aka;

    .line 27
    new-instance p2, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$offText$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$offText$2;-><init>(Lo/Rw;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Rw;->b:Lo/aka;

    .line 30
    new-instance p2, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineSmartDownloadsTextView$caretIcon$2;-><init>(Lo/Rw;Landroid/content/Context;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Rw;->c:Lo/aka;

    .line 36
    move-object p2, p0

    check-cast p2, Landroid/widget/TextView;

    sget p3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->x:I

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/widget/TextView;I)V

    const/16 p2, 0x10

    .line 37
    invoke-virtual {p0, p2}, Lo/Rw;->setGravity(I)V

    .line 39
    invoke-virtual {p0}, Lo/Rw;->setupDrawable()V

    .line 40
    new-instance p2, Lo/Rw$4;

    invoke-direct {p2, p1}, Lo/Rw$4;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lo/Rw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 22
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final d()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lo/Rw;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    return-object v0
.end method

.method private final e()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lo/Rw;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    return-object v0
.end method


# virtual methods
.method protected final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lo/Rw;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lo/Rw;->e()Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/Rw;->d()Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/Rw;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lo/Rw;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lo/Rw$Activity;

    invoke-direct {v1, p0}, Lo/Rw$Activity;-><init>(Lo/Rw;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2}, Lo/ImageSwitcher;->onVisibilityChanged(Landroid/view/View;I)V

    .line 57
    invoke-virtual {p0}, Lo/Rw;->c()V

    return-void
.end method

.method public setupDrawable()V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lo/Rw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->ba:I

    invoke-virtual {p0}, Lo/Rw;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/Activity;

    invoke-static {v2, v3}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v3}, Lo/Rw;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lo/Rw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Rw;->setCompoundDrawablePadding(I)V

    return-void
.end method
