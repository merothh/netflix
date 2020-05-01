.class public Lo/DatePickerCalendarDelegate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DatePickerCalendarDelegate$Activity;
    }
.end annotation


# instance fields
.field private final a:Lo/DatePickerCalendarDelegate$Activity;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Lo/HorizontalScrollView;

.field private final e:Lo/HorizontalScrollView;

.field private final i:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lo/DatePickerCalendarDelegate;->j:Z

    .line 144
    new-instance v0, Lo/DatePickerCalendarDelegate$1;

    invoke-direct {v0, p0}, Lo/DatePickerCalendarDelegate$1;-><init>(Lo/DatePickerCalendarDelegate;)V

    iput-object v0, p0, Lo/DatePickerCalendarDelegate;->i:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p2, p0, Lo/DatePickerCalendarDelegate;->a:Lo/DatePickerCalendarDelegate$Activity;

    .line 45
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->gG:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    .line 52
    iget-object p2, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->gJ:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/DatePickerCalendarDelegate;->c:Landroid/widget/TextView;

    .line 54
    iget-object p2, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gI:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/HorizontalScrollView;

    iput-object p2, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    .line 55
    iget-object p2, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p2, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gH:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/HorizontalScrollView;

    iput-object p2, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    .line 58
    iget-object p2, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Lo/DatePickerCalendarDelegate$5;

    invoke-direct {v0, p0}, Lo/DatePickerCalendarDelegate$5;-><init>(Lo/DatePickerCalendarDelegate;)V

    invoke-virtual {p2, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 71
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    invoke-direct {p0, p1}, Lo/DatePickerCalendarDelegate;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 75
    :cond_1
    invoke-direct {p0}, Lo/DatePickerCalendarDelegate;->b()V

    return-void
.end method

.method static synthetic a(Lo/DatePickerCalendarDelegate;)Lo/DatePickerCalendarDelegate$Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/DatePickerCalendarDelegate;->a:Lo/DatePickerCalendarDelegate$Activity;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->a:Lo/DatePickerCalendarDelegate$Activity;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/DatePickerCalendarDelegate;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 7

    .line 79
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->c:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->c:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aK:I

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/widget/TextView;I)V

    .line 83
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/widget/TextView;)V

    .line 86
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->l:I

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->b(I)V

    .line 88
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->I:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setAllCaps(Z)V

    .line 90
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aL:I

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/widget/TextView;I)V

    .line 92
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aQ:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x20

    .line 93
    invoke-static {p1, v3}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x8

    .line 95
    invoke-static {p1, v4}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v5

    add-int v6, v3, v5

    .line 96
    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object v3, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v1, v5}, Lo/HorizontalScrollView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v1, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    invoke-static {p1, v4}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lo/HorizontalScrollView;->setCompoundDrawablePadding(I)V

    .line 101
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->l:I

    invoke-virtual {p1, v1}, Lo/HorizontalScrollView;->b(I)V

    .line 103
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    invoke-virtual {p1}, Lo/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->I:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    invoke-virtual {p1, v2}, Lo/HorizontalScrollView;->setAllCaps(Z)V

    .line 106
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mp:I

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setText(I)V

    .line 107
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aL:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/widget/TextView;I)V

    .line 110
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->e:Lo/HorizontalScrollView;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 123
    invoke-direct {p0}, Lo/DatePickerCalendarDelegate;->b()V

    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 134
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->d:Lo/HorizontalScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(IZZ)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/DatePickerCalendarDelegate;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iput-boolean p2, p0, Lo/DatePickerCalendarDelegate;->j:Z

    .line 129
    iget-object p1, p0, Lo/DatePickerCalendarDelegate;->b:Landroid/view/View;

    invoke-static {p1, p3}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 130
    invoke-direct {p0}, Lo/DatePickerCalendarDelegate;->b()V

    return-void
.end method
