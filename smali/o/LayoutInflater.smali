.class public Lo/LayoutInflater;
.super Lo/Menu;
.source ""


# instance fields
.field private g:I

.field private h:Lo/Size;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lo/Menu;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 116
    invoke-super {p0, p1}, Lo/Menu;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lo/Menu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 121
    invoke-super {p0, p1}, Lo/Menu;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lo/Menu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 126
    invoke-super {p0, p1}, Lo/Menu;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 135
    iget v0, p0, Lo/LayoutInflater;->j:I

    return v0
.end method

.method protected c(Landroid/util/AttributeSet;)V
    .locals 6

    .line 181
    invoke-super {p0, p1}, Lo/Menu;->c(Landroid/util/AttributeSet;)V

    .line 182
    new-instance v0, Lo/Size;

    invoke-direct {v0}, Lo/Size;-><init>()V

    iput-object v0, p0, Lo/LayoutInflater;->h:Lo/Size;

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p0}, Lo/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/PointerIcon$TaskDescription;->d:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 187
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 188
    sget v4, Lo/PointerIcon$TaskDescription;->f:I

    if-ne v3, v4, :cond_0

    .line 189
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lo/LayoutInflater;->setType(I)V

    goto :goto_1

    .line 190
    :cond_0
    sget v4, Lo/PointerIcon$TaskDescription;->h:I

    if-ne v3, v4, :cond_1

    .line 191
    iget-object v4, p0, Lo/LayoutInflater;->h:Lo/Size;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lo/Size;->d(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iget-object p1, p0, Lo/LayoutInflater;->h:Lo/Size;

    iput-object p1, p0, Lo/LayoutInflater;->b:Lo/ContextThemeWrapper;

    .line 196
    invoke-virtual {p0}, Lo/LayoutInflater;->a()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lo/LayoutInflater;->h:Lo/Size;

    invoke-virtual {v0}, Lo/Size;->d()Z

    move-result v0

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lo/LayoutInflater;->h:Lo/Size;

    invoke-virtual {v0, p1}, Lo/Size;->d(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 5

    .line 144
    iput p1, p0, Lo/LayoutInflater;->j:I

    .line 145
    iput p1, p0, Lo/LayoutInflater;->g:I

    .line 146
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-ge p1, v4, :cond_1

    .line 149
    iget p1, p0, Lo/LayoutInflater;->j:I

    if-ne p1, v1, :cond_0

    .line 150
    iput v2, p0, Lo/LayoutInflater;->g:I

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_6

    .line 152
    iput v3, p0, Lo/LayoutInflater;->g:I

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lo/LayoutInflater;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne v3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 159
    iget p1, p0, Lo/LayoutInflater;->j:I

    if-ne p1, v1, :cond_3

    .line 160
    iput v3, p0, Lo/LayoutInflater;->g:I

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_6

    .line 162
    iput v2, p0, Lo/LayoutInflater;->g:I

    goto :goto_1

    .line 165
    :cond_4
    iget p1, p0, Lo/LayoutInflater;->j:I

    if-ne p1, v1, :cond_5

    .line 166
    iput v2, p0, Lo/LayoutInflater;->g:I

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    .line 168
    iput v3, p0, Lo/LayoutInflater;->g:I

    .line 172
    :cond_6
    :goto_1
    iget-object p1, p0, Lo/LayoutInflater;->h:Lo/Size;

    iget v0, p0, Lo/LayoutInflater;->g:I

    invoke-virtual {p1, v0}, Lo/Size;->d(I)V

    return-void
.end method
