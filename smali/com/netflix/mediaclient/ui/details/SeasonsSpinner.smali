.class public Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
.super Landroid/widget/Spinner;
.source "SeasonsSpinner.java"


# static fields
.field public static final NON_USER_SELECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SeasonsSpinner"

.field public static final USER_SELECTED:I = 0x1


# instance fields
.field private drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

.field private drawableOneSeason:Landroid/graphics/drawable/Drawable;

.field private itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field protected pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

.field private touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 53
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 59
    const v0, 0x7f0f0015

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setId(I)V

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->shouldDispatchToPressHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->dispatchSetPressed(Z)V

    .line 149
    return-void
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    .line 128
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    .line 129
    return-void
.end method

.method public setNonTouchSelection(I)V
    .locals 6

    .prologue
    .line 101
    const-string/jumbo v0, "SeasonsSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting selection to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 110
    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 77
    return-void
.end method

.method public setOnItemTouchListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 81
    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 85
    const-string/jumbo v0, "SeasonsSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting selection to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x1

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 98
    :cond_1
    return-void
.end method

.method protected shouldDispatchToPressHandler()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public tryGetSeasonIndexBySeasonNumber(I)I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    return v0
.end method

.method public updateSeasonData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->updateSeasonData(Ljava/util/List;)V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 117
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setEnabled(Z)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_1
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
