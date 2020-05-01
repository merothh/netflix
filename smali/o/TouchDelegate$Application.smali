.class public Lo/TouchDelegate$Application;
.super Lo/MenuInflater$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TouchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field public aA:F

.field public an:F

.field public ao:Z

.field public ap:F

.field public aq:F

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lo/MenuInflater$StateListAnimator;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    iput p1, p0, Lo/TouchDelegate$Application;->ap:F

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lo/TouchDelegate$Application;->ao:Z

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lo/TouchDelegate$Application;->aq:F

    .line 70
    iput p2, p0, Lo/TouchDelegate$Application;->ar:F

    .line 71
    iput p2, p0, Lo/TouchDelegate$Application;->an:F

    .line 72
    iput p2, p0, Lo/TouchDelegate$Application;->av:F

    .line 73
    iput p1, p0, Lo/TouchDelegate$Application;->as:F

    .line 74
    iput p1, p0, Lo/TouchDelegate$Application;->at:F

    .line 75
    iput p2, p0, Lo/TouchDelegate$Application;->au:F

    .line 76
    iput p2, p0, Lo/TouchDelegate$Application;->aw:F

    .line 77
    iput p2, p0, Lo/TouchDelegate$Application;->aA:F

    .line 78
    iput p2, p0, Lo/TouchDelegate$Application;->ax:F

    .line 79
    iput p2, p0, Lo/TouchDelegate$Application;->ay:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2}, Lo/MenuInflater$StateListAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lo/TouchDelegate$Application;->ap:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lo/TouchDelegate$Application;->ao:Z

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Lo/TouchDelegate$Application;->aq:F

    .line 70
    iput v2, p0, Lo/TouchDelegate$Application;->ar:F

    .line 71
    iput v2, p0, Lo/TouchDelegate$Application;->an:F

    .line 72
    iput v2, p0, Lo/TouchDelegate$Application;->av:F

    .line 73
    iput v0, p0, Lo/TouchDelegate$Application;->as:F

    .line 74
    iput v0, p0, Lo/TouchDelegate$Application;->at:F

    .line 75
    iput v2, p0, Lo/TouchDelegate$Application;->au:F

    .line 76
    iput v2, p0, Lo/TouchDelegate$Application;->aw:F

    .line 77
    iput v2, p0, Lo/TouchDelegate$Application;->aA:F

    .line 78
    iput v2, p0, Lo/TouchDelegate$Application;->ax:F

    .line 79
    iput v2, p0, Lo/TouchDelegate$Application;->ay:F

    .line 91
    sget-object v0, Lo/PointerIcon$TaskDescription;->ai:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 95
    sget v2, Lo/PointerIcon$TaskDescription;->aw:I

    if-ne v0, v2, :cond_0

    .line 96
    iget v2, p0, Lo/TouchDelegate$Application;->ap:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->ap:F

    goto/16 :goto_1

    .line 97
    :cond_0
    sget v2, Lo/PointerIcon$TaskDescription;->aK:I

    if-ne v0, v2, :cond_1

    .line 98
    iget v2, p0, Lo/TouchDelegate$Application;->aq:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->aq:F

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lo/TouchDelegate$Application;->ao:Z

    goto/16 :goto_1

    .line 100
    :cond_1
    sget v2, Lo/PointerIcon$TaskDescription;->aF:I

    if-ne v0, v2, :cond_2

    .line 101
    iget v2, p0, Lo/TouchDelegate$Application;->an:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->an:F

    goto/16 :goto_1

    .line 102
    :cond_2
    sget v2, Lo/PointerIcon$TaskDescription;->aD:I

    if-ne v0, v2, :cond_3

    .line 103
    iget v2, p0, Lo/TouchDelegate$Application;->av:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->av:F

    goto/16 :goto_1

    .line 104
    :cond_3
    sget v2, Lo/PointerIcon$TaskDescription;->aE:I

    if-ne v0, v2, :cond_4

    .line 105
    iget v2, p0, Lo/TouchDelegate$Application;->ar:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->ar:F

    goto :goto_1

    .line 106
    :cond_4
    sget v2, Lo/PointerIcon$TaskDescription;->aB:I

    if-ne v0, v2, :cond_5

    .line 107
    iget v2, p0, Lo/TouchDelegate$Application;->as:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->as:F

    goto :goto_1

    .line 108
    :cond_5
    sget v2, Lo/PointerIcon$TaskDescription;->ay:I

    if-ne v0, v2, :cond_6

    .line 109
    iget v2, p0, Lo/TouchDelegate$Application;->at:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->at:F

    goto :goto_1

    .line 110
    :cond_6
    sget v2, Lo/PointerIcon$TaskDescription;->au:I

    if-ne v0, v2, :cond_7

    .line 111
    iget v2, p0, Lo/TouchDelegate$Application;->au:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->au:F

    goto :goto_1

    .line 112
    :cond_7
    sget v2, Lo/PointerIcon$TaskDescription;->ax:I

    if-ne v0, v2, :cond_8

    .line 113
    iget v2, p0, Lo/TouchDelegate$Application;->aw:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->aw:F

    goto :goto_1

    .line 114
    :cond_8
    sget v2, Lo/PointerIcon$TaskDescription;->aA:I

    if-ne v0, v2, :cond_9

    .line 115
    iget v2, p0, Lo/TouchDelegate$Application;->aA:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->aA:F

    goto :goto_1

    .line 116
    :cond_9
    sget v2, Lo/PointerIcon$TaskDescription;->az:I

    if-ne v0, v2, :cond_a

    .line 117
    iget v2, p0, Lo/TouchDelegate$Application;->ax:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->ax:F

    goto :goto_1

    .line 118
    :cond_a
    sget v2, Lo/PointerIcon$TaskDescription;->aJ:I

    if-ne v0, v2, :cond_b

    .line 119
    iget v2, p0, Lo/TouchDelegate$Application;->ay:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/TouchDelegate$Application;->aA:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
