.class public final Lcom/netflix/mediaclient/ui/mdx/MdxMenu;
.super Ljava/lang/Object;
.source "MdxMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MdxMenu"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final handler:Landroid/os/Handler;

.field private final mdxItem:Landroid/view/MenuItem;

.field private final useDarkIcon:Z


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "MdxMenu"

    const-string/jumbo v1, "creating"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->useDarkIcon:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity that uses MdxMenu must own a reference to mdxFrag!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0801fa

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isMdxMenuEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public static addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    return-void
.end method

.method private animateMdxIcon(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getIcon()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200d0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200cf

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->useDarkIcon:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200f5

    goto :goto_0

    :cond_2
    const v0, 0x7f0200d4

    goto :goto_0
.end method

.method private updateAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method


# virtual methods
.method setEnabled(Z)V
    .locals 5

    const-string/jumbo v0, "MdxMenu"

    const-string/jumbo v1, "Setting mdx menu item enabled %b: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->updateAlpha()V

    return-void
.end method

.method update()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddMdxToMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MdxMenu"

    const-string/jumbo v1, "Service manager or mdx are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->getIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->mdxItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->animateMdxIcon(Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->updateAlpha()V

    goto :goto_0
.end method
