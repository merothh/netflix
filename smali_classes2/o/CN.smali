.class public abstract Lo/CN;
.super Lo/WebChromeClient;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lo/CN;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/CN;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lo/CN;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Lo/CN;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 54
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lo/CN;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$FragmentManager;->e:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 61
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lo/CN;->getActivity()Lo/Serializable;

    move-result-object v3

    invoke-static {v3}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lo/CN;Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/CN;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 69
    invoke-super {p0}, Lo/WebChromeClient;->dismiss()V

    .line 70
    invoke-virtual {p0}, Lo/CN;->a()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCancel(Landroid/content/DialogInterface;)V

    .line 76
    invoke-virtual {p0}, Lo/CN;->a()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lo/CN$3;

    invoke-direct {v0, p0, p1}, Lo/CN$3;-><init>(Lo/CN;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
