.class Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;
.super Ljava/lang/Object;
.source "NetflixTextButton.java"


# instance fields
.field final animationDuration:I

.field final buttonColor:Landroid/content/res/ColorStateList;

.field final cornerRadius:I

.field final iconSize:I

.field final rippleColor:I

.field final simulatePreL:Z

.field final strokeColor:Landroid/content/res/ColorStateList;

.field final strokeWidth:I

.field final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->rippleColor:I

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->simulatePreL:Z

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0

    :array_0
    .array-data 4
        0x7f01012e
        0x7f010130
        0x7f010131
        0x7f010132
        0x7f010133
        0x7f01012f
        0x7f010134
        0x7f010135
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->NetflixButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->animationDuration:I

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->access$000(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->textColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->buttonColor:Landroid/content/res/ColorStateList;

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->rippleColor:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->cornerRadius:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->strokeWidth:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->simulatePreL:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton$Attributes;->iconSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
