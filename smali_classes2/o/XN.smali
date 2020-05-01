.class public Lo/XN;
.super Landroid/widget/Button;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

.field private final c:[Ljava/lang/String;

.field private final e:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V
    .locals 7

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, ".50"

    const-string v1, ".75"

    const-string v2, "1.00"

    const-string v3, "1.25"

    const-string v4, "1.50"

    const-string v5, "1.75"

    const-string v6, "2.00"

    .line 21
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/XN;->c:[Ljava/lang/String;

    const-string v0, "D"

    .line 24
    invoke-virtual {p0, v0}, Lo/XN;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lo/XN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iput-object p2, p0, Lo/XN;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    .line 27
    new-instance p2, Landroid/widget/PopupMenu;

    invoke-direct {p2, p1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lo/XN;->e:Landroid/widget/PopupMenu;

    .line 28
    iget-object p1, p0, Lo/XN;->e:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lo/XN;->d(Landroid/view/Menu;)V

    .line 32
    invoke-direct {p0, p1}, Lo/XN;->a(Landroid/view/Menu;)V

    .line 33
    new-instance p1, Lo/XP;

    invoke-direct {p1, p0}, Lo/XP;-><init>(Lo/XN;)V

    invoke-virtual {p0, p1}, Lo/XN;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "Misc Control"

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lo/XN;->e:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method static synthetic a(Lo/XN;Landroid/app/AlertDialog$Builder;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/XN;->b(Landroid/app/AlertDialog$Builder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lo/XN;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lo/XN;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/XN;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b(Landroid/app/AlertDialog$Builder;Landroid/view/MenuItem;)Z
    .locals 3

    .line 44
    iget-object p2, p0, Lo/XN;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;->d()F

    move-result p2

    .line 45
    iget-object v0, p0, Lo/XN;->c:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lo/XU;->c:Lo/XU;

    invoke-static {v0, p2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p2

    const/4 v0, 0x0

    .line 46
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lo/XN;->c:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 47
    iget-object v0, p0, Lo/XN;->c:[Ljava/lang/String;

    new-instance v2, Lo/XS;

    invoke-direct {v2, p0}, Lo/XS;-><init>(Lo/XN;)V

    invoke-virtual {p1, v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 2

    if-ltz p2, :cond_0

    .line 48
    iget-object v0, p0, Lo/XN;->c:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 49
    iget-object v1, p0, Lo/XN;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    aget-object p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;->setPlaybackSpeed(F)V

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private d(Landroid/view/Menu;)V
    .locals 3

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lo/XN;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->B:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Set Playback Speed"

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v1, Lo/XR;

    invoke-direct {v1, p0, v0}, Lo/XR;-><init>(Lo/XN;Landroid/app/AlertDialog$Builder;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic d(Lo/XN;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/XN;->a(Landroid/view/View;)V

    return-void
.end method
