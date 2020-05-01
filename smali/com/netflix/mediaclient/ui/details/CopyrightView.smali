.class public Lcom/netflix/mediaclient/ui/details/CopyrightView;
.super Ljava/lang/Object;
.source "CopyrightView.java"


# instance fields
.field private copyrightTextView:Landroid/widget/TextView;

.field private copyrightViewGroup:Landroid/view/ViewGroup;

.field private details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private expandedYOffset:I

.field private isCentered:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/details/CopyrightView;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->expandedYOffset:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/details/CopyrightView;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->showExpandedCopyrightPopup(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)V

    return-void
.end method

.method private addExpandedCopyright(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;-><init>(Lcom/netflix/mediaclient/ui/details/CopyrightView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 115
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string/jumbo v0, "layout_inflater"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    const v2, 0x7f03010e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 37
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0f038d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setLayoutAsCentered()V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->addExpandedCopyright(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setExpandedText(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    const v0, 0x7f0f038e

    .line 146
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    return-void
.end method

.method private setLayoutAsCentered()V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    return-void
.end method

.method private setScreenLocation(Landroid/support/v7/app/AlertDialog;)V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 157
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 161
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    const/4 v0, 0x1

    aget v0, v1, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->expandedYOffset:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    return-void

    .line 161
    :cond_0
    const v0, 0x800003

    goto :goto_0
.end method

.method private showExpandedCopyrightPopup(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 121
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    const-string/jumbo v0, "layout_inflater"

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 125
    const v2, 0x7f03010f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setExpandedText(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/View;)V

    .line 135
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setScreenLocation(Landroid/support/v7/app/AlertDialog;)V

    .line 139
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setGravityAsCenter()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    .line 52
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->init()V

    .line 82
    return-void
.end method
