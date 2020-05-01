.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;
.super Landroid/app/Activity;
.source "BarkerRulerActivity.java"


# static fields
.field public static final SHOW_BARS:Z


# instance fields
.field barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createColumn()Landroid/view/View;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-object v0
.end method

.method private createGutter()Landroid/view/View;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-object v0
.end method

.method public static showRuler(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createViews()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getTotalColumnNum()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->createGutter()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->createColumn()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->createGutter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->createViews()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerRulerActivity;->setContentView(Landroid/view/View;)V

    .line 33
    return-void
.end method
